// Auto-generated. Do not edit!

// (in-package control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Imu_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.acc_x = null;
      this.acc_y = null;
      this.acc_z = null;
      this.gyro_r = null;
      this.gyro_p = null;
      this.gyro_y = null;
    }
    else {
      if (initObj.hasOwnProperty('acc_x')) {
        this.acc_x = initObj.acc_x
      }
      else {
        this.acc_x = 0.0;
      }
      if (initObj.hasOwnProperty('acc_y')) {
        this.acc_y = initObj.acc_y
      }
      else {
        this.acc_y = 0.0;
      }
      if (initObj.hasOwnProperty('acc_z')) {
        this.acc_z = initObj.acc_z
      }
      else {
        this.acc_z = 0.0;
      }
      if (initObj.hasOwnProperty('gyro_r')) {
        this.gyro_r = initObj.gyro_r
      }
      else {
        this.gyro_r = 0.0;
      }
      if (initObj.hasOwnProperty('gyro_p')) {
        this.gyro_p = initObj.gyro_p
      }
      else {
        this.gyro_p = 0.0;
      }
      if (initObj.hasOwnProperty('gyro_y')) {
        this.gyro_y = initObj.gyro_y
      }
      else {
        this.gyro_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Imu_data
    // Serialize message field [acc_x]
    bufferOffset = _serializer.float64(obj.acc_x, buffer, bufferOffset);
    // Serialize message field [acc_y]
    bufferOffset = _serializer.float64(obj.acc_y, buffer, bufferOffset);
    // Serialize message field [acc_z]
    bufferOffset = _serializer.float64(obj.acc_z, buffer, bufferOffset);
    // Serialize message field [gyro_r]
    bufferOffset = _serializer.float64(obj.gyro_r, buffer, bufferOffset);
    // Serialize message field [gyro_p]
    bufferOffset = _serializer.float64(obj.gyro_p, buffer, bufferOffset);
    // Serialize message field [gyro_y]
    bufferOffset = _serializer.float64(obj.gyro_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Imu_data
    let len;
    let data = new Imu_data(null);
    // Deserialize message field [acc_x]
    data.acc_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_y]
    data.acc_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_z]
    data.acc_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gyro_r]
    data.gyro_r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gyro_p]
    data.gyro_p = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gyro_y]
    data.gyro_y = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'control/Imu_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a434399257a414fb44320cd9881f0b17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 acc_x
    float64 acc_y
    float64 acc_z
    float64 gyro_r
    float64 gyro_p
    float64 gyro_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Imu_data(null);
    if (msg.acc_x !== undefined) {
      resolved.acc_x = msg.acc_x;
    }
    else {
      resolved.acc_x = 0.0
    }

    if (msg.acc_y !== undefined) {
      resolved.acc_y = msg.acc_y;
    }
    else {
      resolved.acc_y = 0.0
    }

    if (msg.acc_z !== undefined) {
      resolved.acc_z = msg.acc_z;
    }
    else {
      resolved.acc_z = 0.0
    }

    if (msg.gyro_r !== undefined) {
      resolved.gyro_r = msg.gyro_r;
    }
    else {
      resolved.gyro_r = 0.0
    }

    if (msg.gyro_p !== undefined) {
      resolved.gyro_p = msg.gyro_p;
    }
    else {
      resolved.gyro_p = 0.0
    }

    if (msg.gyro_y !== undefined) {
      resolved.gyro_y = msg.gyro_y;
    }
    else {
      resolved.gyro_y = 0.0
    }

    return resolved;
    }
};

module.exports = Imu_data;
