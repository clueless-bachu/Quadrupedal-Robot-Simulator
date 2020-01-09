// Auto-generated. Do not edit!

// (in-package deeprl.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class State {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.error_dist = null;
      this.error_angle = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.dx = null;
      this.dy = null;
      this.dz = null;
      this.roll = null;
      this.pitch = null;
      this.yaw = null;
      this.droll = null;
      this.dpitch = null;
      this.dyaw = null;
      this.flj = null;
      this.fltl = null;
      this.flbl = null;
      this.frj = null;
      this.frtl = null;
      this.frbl = null;
      this.blj = null;
      this.bltl = null;
      this.blbl = null;
      this.brj = null;
      this.brtl = null;
      this.brbl = null;
      this.dflj = null;
      this.dfltl = null;
      this.dflbl = null;
      this.dfrj = null;
      this.dfrtl = null;
      this.dfrbl = null;
      this.dblj = null;
      this.dbltl = null;
      this.dblbl = null;
      this.dbrj = null;
      this.dbrtl = null;
      this.dbrbl = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('error_dist')) {
        this.error_dist = initObj.error_dist
      }
      else {
        this.error_dist = 0.0;
      }
      if (initObj.hasOwnProperty('error_angle')) {
        this.error_angle = initObj.error_angle
      }
      else {
        this.error_angle = 0.0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('dx')) {
        this.dx = initObj.dx
      }
      else {
        this.dx = 0.0;
      }
      if (initObj.hasOwnProperty('dy')) {
        this.dy = initObj.dy
      }
      else {
        this.dy = 0.0;
      }
      if (initObj.hasOwnProperty('dz')) {
        this.dz = initObj.dz
      }
      else {
        this.dz = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('droll')) {
        this.droll = initObj.droll
      }
      else {
        this.droll = 0.0;
      }
      if (initObj.hasOwnProperty('dpitch')) {
        this.dpitch = initObj.dpitch
      }
      else {
        this.dpitch = 0.0;
      }
      if (initObj.hasOwnProperty('dyaw')) {
        this.dyaw = initObj.dyaw
      }
      else {
        this.dyaw = 0.0;
      }
      if (initObj.hasOwnProperty('flj')) {
        this.flj = initObj.flj
      }
      else {
        this.flj = 0.0;
      }
      if (initObj.hasOwnProperty('fltl')) {
        this.fltl = initObj.fltl
      }
      else {
        this.fltl = 0.0;
      }
      if (initObj.hasOwnProperty('flbl')) {
        this.flbl = initObj.flbl
      }
      else {
        this.flbl = 0.0;
      }
      if (initObj.hasOwnProperty('frj')) {
        this.frj = initObj.frj
      }
      else {
        this.frj = 0.0;
      }
      if (initObj.hasOwnProperty('frtl')) {
        this.frtl = initObj.frtl
      }
      else {
        this.frtl = 0.0;
      }
      if (initObj.hasOwnProperty('frbl')) {
        this.frbl = initObj.frbl
      }
      else {
        this.frbl = 0.0;
      }
      if (initObj.hasOwnProperty('blj')) {
        this.blj = initObj.blj
      }
      else {
        this.blj = 0.0;
      }
      if (initObj.hasOwnProperty('bltl')) {
        this.bltl = initObj.bltl
      }
      else {
        this.bltl = 0.0;
      }
      if (initObj.hasOwnProperty('blbl')) {
        this.blbl = initObj.blbl
      }
      else {
        this.blbl = 0.0;
      }
      if (initObj.hasOwnProperty('brj')) {
        this.brj = initObj.brj
      }
      else {
        this.brj = 0.0;
      }
      if (initObj.hasOwnProperty('brtl')) {
        this.brtl = initObj.brtl
      }
      else {
        this.brtl = 0.0;
      }
      if (initObj.hasOwnProperty('brbl')) {
        this.brbl = initObj.brbl
      }
      else {
        this.brbl = 0.0;
      }
      if (initObj.hasOwnProperty('dflj')) {
        this.dflj = initObj.dflj
      }
      else {
        this.dflj = 0.0;
      }
      if (initObj.hasOwnProperty('dfltl')) {
        this.dfltl = initObj.dfltl
      }
      else {
        this.dfltl = 0.0;
      }
      if (initObj.hasOwnProperty('dflbl')) {
        this.dflbl = initObj.dflbl
      }
      else {
        this.dflbl = 0.0;
      }
      if (initObj.hasOwnProperty('dfrj')) {
        this.dfrj = initObj.dfrj
      }
      else {
        this.dfrj = 0.0;
      }
      if (initObj.hasOwnProperty('dfrtl')) {
        this.dfrtl = initObj.dfrtl
      }
      else {
        this.dfrtl = 0.0;
      }
      if (initObj.hasOwnProperty('dfrbl')) {
        this.dfrbl = initObj.dfrbl
      }
      else {
        this.dfrbl = 0.0;
      }
      if (initObj.hasOwnProperty('dblj')) {
        this.dblj = initObj.dblj
      }
      else {
        this.dblj = 0.0;
      }
      if (initObj.hasOwnProperty('dbltl')) {
        this.dbltl = initObj.dbltl
      }
      else {
        this.dbltl = 0.0;
      }
      if (initObj.hasOwnProperty('dblbl')) {
        this.dblbl = initObj.dblbl
      }
      else {
        this.dblbl = 0.0;
      }
      if (initObj.hasOwnProperty('dbrj')) {
        this.dbrj = initObj.dbrj
      }
      else {
        this.dbrj = 0.0;
      }
      if (initObj.hasOwnProperty('dbrtl')) {
        this.dbrtl = initObj.dbrtl
      }
      else {
        this.dbrtl = 0.0;
      }
      if (initObj.hasOwnProperty('dbrbl')) {
        this.dbrbl = initObj.dbrbl
      }
      else {
        this.dbrbl = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type State
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [error_dist]
    bufferOffset = _serializer.float64(obj.error_dist, buffer, bufferOffset);
    // Serialize message field [error_angle]
    bufferOffset = _serializer.float64(obj.error_angle, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [dx]
    bufferOffset = _serializer.float64(obj.dx, buffer, bufferOffset);
    // Serialize message field [dy]
    bufferOffset = _serializer.float64(obj.dy, buffer, bufferOffset);
    // Serialize message field [dz]
    bufferOffset = _serializer.float64(obj.dz, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [droll]
    bufferOffset = _serializer.float64(obj.droll, buffer, bufferOffset);
    // Serialize message field [dpitch]
    bufferOffset = _serializer.float64(obj.dpitch, buffer, bufferOffset);
    // Serialize message field [dyaw]
    bufferOffset = _serializer.float64(obj.dyaw, buffer, bufferOffset);
    // Serialize message field [flj]
    bufferOffset = _serializer.float64(obj.flj, buffer, bufferOffset);
    // Serialize message field [fltl]
    bufferOffset = _serializer.float64(obj.fltl, buffer, bufferOffset);
    // Serialize message field [flbl]
    bufferOffset = _serializer.float64(obj.flbl, buffer, bufferOffset);
    // Serialize message field [frj]
    bufferOffset = _serializer.float64(obj.frj, buffer, bufferOffset);
    // Serialize message field [frtl]
    bufferOffset = _serializer.float64(obj.frtl, buffer, bufferOffset);
    // Serialize message field [frbl]
    bufferOffset = _serializer.float64(obj.frbl, buffer, bufferOffset);
    // Serialize message field [blj]
    bufferOffset = _serializer.float64(obj.blj, buffer, bufferOffset);
    // Serialize message field [bltl]
    bufferOffset = _serializer.float64(obj.bltl, buffer, bufferOffset);
    // Serialize message field [blbl]
    bufferOffset = _serializer.float64(obj.blbl, buffer, bufferOffset);
    // Serialize message field [brj]
    bufferOffset = _serializer.float64(obj.brj, buffer, bufferOffset);
    // Serialize message field [brtl]
    bufferOffset = _serializer.float64(obj.brtl, buffer, bufferOffset);
    // Serialize message field [brbl]
    bufferOffset = _serializer.float64(obj.brbl, buffer, bufferOffset);
    // Serialize message field [dflj]
    bufferOffset = _serializer.float64(obj.dflj, buffer, bufferOffset);
    // Serialize message field [dfltl]
    bufferOffset = _serializer.float64(obj.dfltl, buffer, bufferOffset);
    // Serialize message field [dflbl]
    bufferOffset = _serializer.float64(obj.dflbl, buffer, bufferOffset);
    // Serialize message field [dfrj]
    bufferOffset = _serializer.float64(obj.dfrj, buffer, bufferOffset);
    // Serialize message field [dfrtl]
    bufferOffset = _serializer.float64(obj.dfrtl, buffer, bufferOffset);
    // Serialize message field [dfrbl]
    bufferOffset = _serializer.float64(obj.dfrbl, buffer, bufferOffset);
    // Serialize message field [dblj]
    bufferOffset = _serializer.float64(obj.dblj, buffer, bufferOffset);
    // Serialize message field [dbltl]
    bufferOffset = _serializer.float64(obj.dbltl, buffer, bufferOffset);
    // Serialize message field [dblbl]
    bufferOffset = _serializer.float64(obj.dblbl, buffer, bufferOffset);
    // Serialize message field [dbrj]
    bufferOffset = _serializer.float64(obj.dbrj, buffer, bufferOffset);
    // Serialize message field [dbrtl]
    bufferOffset = _serializer.float64(obj.dbrtl, buffer, bufferOffset);
    // Serialize message field [dbrbl]
    bufferOffset = _serializer.float64(obj.dbrbl, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type State
    let len;
    let data = new State(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [error_dist]
    data.error_dist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [error_angle]
    data.error_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dx]
    data.dx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dy]
    data.dy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dz]
    data.dz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [droll]
    data.droll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dpitch]
    data.dpitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dyaw]
    data.dyaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flj]
    data.flj = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fltl]
    data.fltl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flbl]
    data.flbl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [frj]
    data.frj = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [frtl]
    data.frtl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [frbl]
    data.frbl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [blj]
    data.blj = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bltl]
    data.bltl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [blbl]
    data.blbl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brj]
    data.brj = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brtl]
    data.brtl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brbl]
    data.brbl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dflj]
    data.dflj = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dfltl]
    data.dfltl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dflbl]
    data.dflbl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dfrj]
    data.dfrj = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dfrtl]
    data.dfrtl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dfrbl]
    data.dfrbl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dblj]
    data.dblj = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dbltl]
    data.dbltl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dblbl]
    data.dblbl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dbrj]
    data.dbrj = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dbrtl]
    data.dbrtl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dbrbl]
    data.dbrbl = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 304;
  }

  static datatype() {
    // Returns string type for a message object
    return 'deeprl/State';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '342a3f14758aa4591390d3a42f7f92a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64 error_dist
    float64 error_angle
    float64 x
    float64 y
    float64 z
    float64 dx
    float64 dy
    float64 dz
    float64 roll
    float64 pitch
    float64 yaw
    float64 droll
    float64 dpitch
    float64 dyaw
    float64 flj
    float64 fltl
    float64 flbl
    float64 frj
    float64 frtl
    float64 frbl
    float64 blj
    float64 bltl
    float64 blbl
    float64 brj
    float64 brtl
    float64 brbl
    float64 dflj
    float64 dfltl
    float64 dflbl
    float64 dfrj
    float64 dfrtl
    float64 dfrbl
    float64 dblj
    float64 dbltl
    float64 dblbl
    float64 dbrj
    float64 dbrtl
    float64 dbrbl
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new State(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.error_dist !== undefined) {
      resolved.error_dist = msg.error_dist;
    }
    else {
      resolved.error_dist = 0.0
    }

    if (msg.error_angle !== undefined) {
      resolved.error_angle = msg.error_angle;
    }
    else {
      resolved.error_angle = 0.0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.dx !== undefined) {
      resolved.dx = msg.dx;
    }
    else {
      resolved.dx = 0.0
    }

    if (msg.dy !== undefined) {
      resolved.dy = msg.dy;
    }
    else {
      resolved.dy = 0.0
    }

    if (msg.dz !== undefined) {
      resolved.dz = msg.dz;
    }
    else {
      resolved.dz = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.droll !== undefined) {
      resolved.droll = msg.droll;
    }
    else {
      resolved.droll = 0.0
    }

    if (msg.dpitch !== undefined) {
      resolved.dpitch = msg.dpitch;
    }
    else {
      resolved.dpitch = 0.0
    }

    if (msg.dyaw !== undefined) {
      resolved.dyaw = msg.dyaw;
    }
    else {
      resolved.dyaw = 0.0
    }

    if (msg.flj !== undefined) {
      resolved.flj = msg.flj;
    }
    else {
      resolved.flj = 0.0
    }

    if (msg.fltl !== undefined) {
      resolved.fltl = msg.fltl;
    }
    else {
      resolved.fltl = 0.0
    }

    if (msg.flbl !== undefined) {
      resolved.flbl = msg.flbl;
    }
    else {
      resolved.flbl = 0.0
    }

    if (msg.frj !== undefined) {
      resolved.frj = msg.frj;
    }
    else {
      resolved.frj = 0.0
    }

    if (msg.frtl !== undefined) {
      resolved.frtl = msg.frtl;
    }
    else {
      resolved.frtl = 0.0
    }

    if (msg.frbl !== undefined) {
      resolved.frbl = msg.frbl;
    }
    else {
      resolved.frbl = 0.0
    }

    if (msg.blj !== undefined) {
      resolved.blj = msg.blj;
    }
    else {
      resolved.blj = 0.0
    }

    if (msg.bltl !== undefined) {
      resolved.bltl = msg.bltl;
    }
    else {
      resolved.bltl = 0.0
    }

    if (msg.blbl !== undefined) {
      resolved.blbl = msg.blbl;
    }
    else {
      resolved.blbl = 0.0
    }

    if (msg.brj !== undefined) {
      resolved.brj = msg.brj;
    }
    else {
      resolved.brj = 0.0
    }

    if (msg.brtl !== undefined) {
      resolved.brtl = msg.brtl;
    }
    else {
      resolved.brtl = 0.0
    }

    if (msg.brbl !== undefined) {
      resolved.brbl = msg.brbl;
    }
    else {
      resolved.brbl = 0.0
    }

    if (msg.dflj !== undefined) {
      resolved.dflj = msg.dflj;
    }
    else {
      resolved.dflj = 0.0
    }

    if (msg.dfltl !== undefined) {
      resolved.dfltl = msg.dfltl;
    }
    else {
      resolved.dfltl = 0.0
    }

    if (msg.dflbl !== undefined) {
      resolved.dflbl = msg.dflbl;
    }
    else {
      resolved.dflbl = 0.0
    }

    if (msg.dfrj !== undefined) {
      resolved.dfrj = msg.dfrj;
    }
    else {
      resolved.dfrj = 0.0
    }

    if (msg.dfrtl !== undefined) {
      resolved.dfrtl = msg.dfrtl;
    }
    else {
      resolved.dfrtl = 0.0
    }

    if (msg.dfrbl !== undefined) {
      resolved.dfrbl = msg.dfrbl;
    }
    else {
      resolved.dfrbl = 0.0
    }

    if (msg.dblj !== undefined) {
      resolved.dblj = msg.dblj;
    }
    else {
      resolved.dblj = 0.0
    }

    if (msg.dbltl !== undefined) {
      resolved.dbltl = msg.dbltl;
    }
    else {
      resolved.dbltl = 0.0
    }

    if (msg.dblbl !== undefined) {
      resolved.dblbl = msg.dblbl;
    }
    else {
      resolved.dblbl = 0.0
    }

    if (msg.dbrj !== undefined) {
      resolved.dbrj = msg.dbrj;
    }
    else {
      resolved.dbrj = 0.0
    }

    if (msg.dbrtl !== undefined) {
      resolved.dbrtl = msg.dbrtl;
    }
    else {
      resolved.dbrtl = 0.0
    }

    if (msg.dbrbl !== undefined) {
      resolved.dbrbl = msg.dbrbl;
    }
    else {
      resolved.dbrbl = 0.0
    }

    return resolved;
    }
};

module.exports = State;
