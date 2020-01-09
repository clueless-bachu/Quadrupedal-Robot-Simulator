#!/usr/bin/env python3

import rospy
from control.msg import Actuator
from deeprl.msg import State
import numpy as np
import tensorflow as tf
from keras.callbacks import TensorBoard
from keras.layers import Input, Dense, Conv2D, MaxPooling2D, Flatten
from keras.models import Model
from keras.optimizers import Adam
from keras import backend as K
# K.clear_session()
graph = tf.get_default_graph()
clipping_val = 0.2
critic_discount = 0.5
entropy_beta = 0.001
gamma = 0.99
lmbda = 0.95
dummy_n = np.zeros((1, 1, 12))
dummy_1 = np.zeros((1, 1, 1))

def get_reward(er1,er2):
	return 1000/(10+0.1*er1+0.1*er2)

def get_advantages(values, masks, rewards):
    returns = []
    gae = 0
    for i in reversed(range(len(rewards))):
        delta = rewards[i] + gamma * values[i + 1] * masks[i] - values[i]
        gae = delta + gamma * lmbda * masks[i] * gae
        returns.insert(0, gae + values[i])

    adv = np.array(returns) - values[:-1]
    return returns, (adv - np.mean(adv)) / (np.std(adv) + 1e-10)

def ppo_loss(oldpolicy_probs, advantages, rewards, values):
    def loss(y_true, y_pred):
        newpolicy_probs = y_pred
        ratio = K.exp(K.log(newpolicy_probs + 1e-10) - K.log(oldpolicy_probs + 1e-10))
        p1 = ratio * advantages
        p2 = K.clip(ratio, min_value=1 - clipping_val, max_value=1 + clipping_val) * advantages
        actor_loss = -K.mean(K.minimum(p1, p2))
        critic_loss = K.mean(K.square(rewards - values))
        total_loss = critic_discount * critic_loss + actor_loss - entropy_beta * K.mean(
            -(newpolicy_probs * K.log(newpolicy_probs + 1e-10)))
        return total_loss

    return loss

def get_model_actor_simple(input_dims, output_dims):
    state_input = Input(shape=(input_dims,))
    # oldpolicy_probs = Input(shape=(1, output_dims,))
    # advantages = Input(shape=(1, 1,))
    # rewards = Input(shape=(1, 1,))
    # values = Input(shape=(1, 1,))

    # Classification block
    x = Dense(512, activation='relu', name='fc1')(state_input)
    x = Dense(256, activation='relu', name='fc2')(x)
    out_actions = Dense(output_dims, activation='softmax', name='predictions')(x)

    model = Model(inputs=[state_input],#, oldpolicy_probs, advantages, rewards, values],
                  outputs=[out_actions])
    model.compile(optimizer=Adam(lr=1e-4), loss='mse')#[ppo_loss(
    #     oldpolicy_probs=oldpolicy_probs,
    #     advantages=advantages,
    #     rewards=rewards,
    #     values=values)])
    # model.summary()
    return model


def get_model_critic_simple(input_dims):
    state_input = Input(shape=(1,input_dims))

    # Classification block
    x = Dense(512, activation='relu', name='fc1')(state_input)
    x = Dense(256, activation='relu', name='fc2')(x)
    out_actions = Dense(1, activation='tanh')(x)

    model = Model(inputs=[state_input], outputs=[out_actions])
    model.compile(optimizer=Adam(lr=1e-4), loss='mse')
    # model.summary()
    return model

class ppo_params():
	def __init__(self):
		self.rewards = []
		self.states = []
		self.actions=[]
		self.mask =[]
		self.advantages = []
		self.values = []
		self.actor_model= get_model_actor_simple(38,12)
		self.critic_model= get_model_critic_simple(38)
		self.exp_counter = 0
		self.msg = Actuator()
ppo = ppo_params()


def callback(data):
	# observation = np.array([data.error_dist,data.error_angle, data.x,data.y,data.z,data.dx,data.dy,data.dz,data.roll,\
	# 	data.pitch,data.yaw,data.droll,data.dpitch,data.dyaw,data.flj,data.fltl,data.flbl,data.frj,data.frtl,\
	# 	data.frbl,data.blj,data.bltl,data.blbl,data.brj,data.brtl,data.brbl,data.dflj,data.dfltl,data.dflbl,\
	# 	data.dfrj,data.dfrtl,data.dfrbl,data.dblj,data.dbltl,data.dblbl,data.dbrj,data.dbrtl,data.dbrbl]).reshape(1,1,38)
	# reward = get_reward(data.error_dist, data.error_angle)
	# print(ppo.exp_counter)
	# K.clear_session()

	# inp = ([observation, dummy_n, dummy_1, dummy_1, dummy_1])
	# actions = ppo.actor_model.predict([observation])
	obs = np.array([12]*38).reshape(1,38,)
	with graph.as_default():
		actions = ppo.actor_model.predict(obs)
	print(actions)
	# value = ppo.critic_model.predict([observation])
	# ppo.msg.frontlefttop=actions[0]
	# ppo.msg.frontleftbottom=actions[1]
	# ppo.msg.frontrighttop=actions[2]
	# ppo.msg.frontrightbottom=actions[3]
	# ppo.msg.backlefttop=actions[4]
	# ppo.msg.backleftbottom=actions[5]
	# ppo.msg.backrighttop=actions[6]
	# ppo.msg.backrightbottom=actions[7]
	# ppo.msg.flj=actions[8]
	# ppo.msg.frj=actions[9]
	# ppo.msg.blj=actions[10]
	# ppo.msg.brj=actions[11]
	# pub.publish(ppo.msg)




	# ppo.actions = 

	# if ppo.exp_counter>=num_trials:
	# 	ppo.exp_counter = 0
	# 	ppo.advantages= get_advantages(ppo.values,ppo.masks,ppo.rewards)

	# 	ppo.actor_model.fit(
 #        [states, actions_probs, advantages, np.reshape(rewards, newshape=(-1, 1, 1)), values[:-1]],
 #        [(np.reshape(actions_onehot, newshape=(-1, n_actions)))], verbose=True, shuffle=True, epochs=8,
 #        callbacks=[tensor_board])
 #        ppo.critic_model.fit([states], [np.reshape(returns, newshape=(-1, 1))], shuffle=True, epochs=8, verbose=True)
 #        ppo.rewards = []
	# 	ppo.states = []
	# 	ppo.actions=[]
	# 	ppo.mask =[]
	# 	ppo.advantages = []
	# 	ppo.values = []





if __name__ == "__main__":

	rospy.init_node('ppo', anonymous=True)
	pub = rospy.Publisher('ActuatorAngles', Actuator, queue_size=1)
	rospy.Subscriber("/robot_state", State, callback)
	print("Started subscribing to the state topic")
	# obs = np.array([12]*38).reshape(1,38,)
	# actions = ppo.actor_model.predict(obs)
	# print(actions)

	rospy.spin()