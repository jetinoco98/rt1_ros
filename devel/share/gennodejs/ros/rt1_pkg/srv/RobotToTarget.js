// Auto-generated. Do not edit!

// (in-package rt1_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RobotToTargetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotToTargetRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotToTargetRequest
    let len;
    let data = new RobotToTargetRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rt1_pkg/RobotToTargetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Request part (empty)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotToTargetRequest(null);
    return resolved;
    }
};

class RobotToTargetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dx = null;
      this.dy = null;
      this.distance = null;
      this.average_vx = null;
      this.average_vy = null;
    }
    else {
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
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('average_vx')) {
        this.average_vx = initObj.average_vx
      }
      else {
        this.average_vx = 0.0;
      }
      if (initObj.hasOwnProperty('average_vy')) {
        this.average_vy = initObj.average_vy
      }
      else {
        this.average_vy = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotToTargetResponse
    // Serialize message field [dx]
    bufferOffset = _serializer.float32(obj.dx, buffer, bufferOffset);
    // Serialize message field [dy]
    bufferOffset = _serializer.float32(obj.dy, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    // Serialize message field [average_vx]
    bufferOffset = _serializer.float32(obj.average_vx, buffer, bufferOffset);
    // Serialize message field [average_vy]
    bufferOffset = _serializer.float32(obj.average_vy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotToTargetResponse
    let len;
    let data = new RobotToTargetResponse(null);
    // Deserialize message field [dx]
    data.dx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dy]
    data.dy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [average_vx]
    data.average_vx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [average_vy]
    data.average_vy = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rt1_pkg/RobotToTargetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '185aad6ed636881de3d9111fc76b7e00';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Response part
    float32 dx
    float32 dy
    float32 distance
    float32 average_vx
    float32 average_vy
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotToTargetResponse(null);
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

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.average_vx !== undefined) {
      resolved.average_vx = msg.average_vx;
    }
    else {
      resolved.average_vx = 0.0
    }

    if (msg.average_vy !== undefined) {
      resolved.average_vy = msg.average_vy;
    }
    else {
      resolved.average_vy = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: RobotToTargetRequest,
  Response: RobotToTargetResponse,
  md5sum() { return '185aad6ed636881de3d9111fc76b7e00'; },
  datatype() { return 'rt1_pkg/RobotToTarget'; }
};
