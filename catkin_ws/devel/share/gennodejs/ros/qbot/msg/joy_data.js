// Auto-generated. Do not edit!

// (in-package qbot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class joy_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Data = null;
    }
    else {
      if (initObj.hasOwnProperty('Data')) {
        this.Data = initObj.Data
      }
      else {
        this.Data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type joy_data
    // Serialize message field [Data]
    bufferOffset = _arraySerializer.string(obj.Data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type joy_data
    let len;
    let data = new joy_data(null);
    // Deserialize message field [Data]
    data.Data = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.Data.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'qbot/joy_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2d226b1a015f23e10eb1a23f5775c959';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] Data
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new joy_data(null);
    if (msg.Data !== undefined) {
      resolved.Data = msg.Data;
    }
    else {
      resolved.Data = []
    }

    return resolved;
    }
};

module.exports = joy_data;
