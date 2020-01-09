// Auto-generated. Do not edit!

// (in-package control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Actuator {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.frontlefttop = null;
      this.frontleftbottom = null;
      this.frontrighttop = null;
      this.frontrightbottom = null;
      this.backlefttop = null;
      this.backleftbottom = null;
      this.backrighttop = null;
      this.backrightbottom = null;
      this.flj = null;
      this.frj = null;
      this.blj = null;
      this.brj = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('frontlefttop')) {
        this.frontlefttop = initObj.frontlefttop
      }
      else {
        this.frontlefttop = 0.0;
      }
      if (initObj.hasOwnProperty('frontleftbottom')) {
        this.frontleftbottom = initObj.frontleftbottom
      }
      else {
        this.frontleftbottom = 0.0;
      }
      if (initObj.hasOwnProperty('frontrighttop')) {
        this.frontrighttop = initObj.frontrighttop
      }
      else {
        this.frontrighttop = 0.0;
      }
      if (initObj.hasOwnProperty('frontrightbottom')) {
        this.frontrightbottom = initObj.frontrightbottom
      }
      else {
        this.frontrightbottom = 0.0;
      }
      if (initObj.hasOwnProperty('backlefttop')) {
        this.backlefttop = initObj.backlefttop
      }
      else {
        this.backlefttop = 0.0;
      }
      if (initObj.hasOwnProperty('backleftbottom')) {
        this.backleftbottom = initObj.backleftbottom
      }
      else {
        this.backleftbottom = 0.0;
      }
      if (initObj.hasOwnProperty('backrighttop')) {
        this.backrighttop = initObj.backrighttop
      }
      else {
        this.backrighttop = 0.0;
      }
      if (initObj.hasOwnProperty('backrightbottom')) {
        this.backrightbottom = initObj.backrightbottom
      }
      else {
        this.backrightbottom = 0.0;
      }
      if (initObj.hasOwnProperty('flj')) {
        this.flj = initObj.flj
      }
      else {
        this.flj = 0.0;
      }
      if (initObj.hasOwnProperty('frj')) {
        this.frj = initObj.frj
      }
      else {
        this.frj = 0.0;
      }
      if (initObj.hasOwnProperty('blj')) {
        this.blj = initObj.blj
      }
      else {
        this.blj = 0.0;
      }
      if (initObj.hasOwnProperty('brj')) {
        this.brj = initObj.brj
      }
      else {
        this.brj = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Actuator
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [frontlefttop]
    bufferOffset = _serializer.float64(obj.frontlefttop, buffer, bufferOffset);
    // Serialize message field [frontleftbottom]
    bufferOffset = _serializer.float64(obj.frontleftbottom, buffer, bufferOffset);
    // Serialize message field [frontrighttop]
    bufferOffset = _serializer.float64(obj.frontrighttop, buffer, bufferOffset);
    // Serialize message field [frontrightbottom]
    bufferOffset = _serializer.float64(obj.frontrightbottom, buffer, bufferOffset);
    // Serialize message field [backlefttop]
    bufferOffset = _serializer.float64(obj.backlefttop, buffer, bufferOffset);
    // Serialize message field [backleftbottom]
    bufferOffset = _serializer.float64(obj.backleftbottom, buffer, bufferOffset);
    // Serialize message field [backrighttop]
    bufferOffset = _serializer.float64(obj.backrighttop, buffer, bufferOffset);
    // Serialize message field [backrightbottom]
    bufferOffset = _serializer.float64(obj.backrightbottom, buffer, bufferOffset);
    // Serialize message field [flj]
    bufferOffset = _serializer.float64(obj.flj, buffer, bufferOffset);
    // Serialize message field [frj]
    bufferOffset = _serializer.float64(obj.frj, buffer, bufferOffset);
    // Serialize message field [blj]
    bufferOffset = _serializer.float64(obj.blj, buffer, bufferOffset);
    // Serialize message field [brj]
    bufferOffset = _serializer.float64(obj.brj, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Actuator
    let len;
    let data = new Actuator(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [frontlefttop]
    data.frontlefttop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [frontleftbottom]
    data.frontleftbottom = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [frontrighttop]
    data.frontrighttop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [frontrightbottom]
    data.frontrightbottom = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [backlefttop]
    data.backlefttop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [backleftbottom]
    data.backleftbottom = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [backrighttop]
    data.backrighttop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [backrightbottom]
    data.backrightbottom = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flj]
    data.flj = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [frj]
    data.frj = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [blj]
    data.blj = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brj]
    data.brj = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'control/Actuator';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ecf7f2c939d6596e550f5f3f0601f351';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64 frontlefttop
    float64 frontleftbottom
    float64 frontrighttop
    float64 frontrightbottom
    float64 backlefttop
    float64 backleftbottom
    float64 backrighttop
    float64 backrightbottom
    float64 flj
    float64 frj
    float64 blj
    float64 brj
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
    const resolved = new Actuator(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.frontlefttop !== undefined) {
      resolved.frontlefttop = msg.frontlefttop;
    }
    else {
      resolved.frontlefttop = 0.0
    }

    if (msg.frontleftbottom !== undefined) {
      resolved.frontleftbottom = msg.frontleftbottom;
    }
    else {
      resolved.frontleftbottom = 0.0
    }

    if (msg.frontrighttop !== undefined) {
      resolved.frontrighttop = msg.frontrighttop;
    }
    else {
      resolved.frontrighttop = 0.0
    }

    if (msg.frontrightbottom !== undefined) {
      resolved.frontrightbottom = msg.frontrightbottom;
    }
    else {
      resolved.frontrightbottom = 0.0
    }

    if (msg.backlefttop !== undefined) {
      resolved.backlefttop = msg.backlefttop;
    }
    else {
      resolved.backlefttop = 0.0
    }

    if (msg.backleftbottom !== undefined) {
      resolved.backleftbottom = msg.backleftbottom;
    }
    else {
      resolved.backleftbottom = 0.0
    }

    if (msg.backrighttop !== undefined) {
      resolved.backrighttop = msg.backrighttop;
    }
    else {
      resolved.backrighttop = 0.0
    }

    if (msg.backrightbottom !== undefined) {
      resolved.backrightbottom = msg.backrightbottom;
    }
    else {
      resolved.backrightbottom = 0.0
    }

    if (msg.flj !== undefined) {
      resolved.flj = msg.flj;
    }
    else {
      resolved.flj = 0.0
    }

    if (msg.frj !== undefined) {
      resolved.frj = msg.frj;
    }
    else {
      resolved.frj = 0.0
    }

    if (msg.blj !== undefined) {
      resolved.blj = msg.blj;
    }
    else {
      resolved.blj = 0.0
    }

    if (msg.brj !== undefined) {
      resolved.brj = msg.brj;
    }
    else {
      resolved.brj = 0.0
    }

    return resolved;
    }
};

module.exports = Actuator;
