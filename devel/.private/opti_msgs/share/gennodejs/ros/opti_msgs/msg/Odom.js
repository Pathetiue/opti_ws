// Auto-generated. Do not edit!

// (in-package opti_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Odom {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.rigidBodyID = null;
      this.deltaTime = null;
      this.position = null;
      this.euler = null;
      this.linear = null;
      this.angular = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('rigidBodyID')) {
        this.rigidBodyID = initObj.rigidBodyID
      }
      else {
        this.rigidBodyID = 0;
      }
      if (initObj.hasOwnProperty('deltaTime')) {
        this.deltaTime = initObj.deltaTime
      }
      else {
        this.deltaTime = 0.0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('euler')) {
        this.euler = initObj.euler
      }
      else {
        this.euler = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('linear')) {
        this.linear = initObj.linear
      }
      else {
        this.linear = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('angular')) {
        this.angular = initObj.angular
      }
      else {
        this.angular = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Odom
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [rigidBodyID]
    bufferOffset = _serializer.int32(obj.rigidBodyID, buffer, bufferOffset);
    // Serialize message field [deltaTime]
    bufferOffset = _serializer.float64(obj.deltaTime, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [euler]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.euler, buffer, bufferOffset);
    // Serialize message field [linear]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.linear, buffer, bufferOffset);
    // Serialize message field [angular]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.angular, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Odom
    let len;
    let data = new Odom(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [rigidBodyID]
    data.rigidBodyID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [deltaTime]
    data.deltaTime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [euler]
    data.euler = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear]
    data.linear = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular]
    data.angular = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 108;
  }

  static datatype() {
    // Returns string type for a message object
    return 'opti_msgs/Odom';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eca3ed57d1037c7cecff0230e5e5de39';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32 rigidBodyID
    float64 deltaTime
    geometry_msgs/Vector3 position
    geometry_msgs/Vector3 euler
    geometry_msgs/Vector3 linear
    geometry_msgs/Vector3 angular
    
    
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
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Odom(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.rigidBodyID !== undefined) {
      resolved.rigidBodyID = msg.rigidBodyID;
    }
    else {
      resolved.rigidBodyID = 0
    }

    if (msg.deltaTime !== undefined) {
      resolved.deltaTime = msg.deltaTime;
    }
    else {
      resolved.deltaTime = 0.0
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Vector3.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Vector3()
    }

    if (msg.euler !== undefined) {
      resolved.euler = geometry_msgs.msg.Vector3.Resolve(msg.euler)
    }
    else {
      resolved.euler = new geometry_msgs.msg.Vector3()
    }

    if (msg.linear !== undefined) {
      resolved.linear = geometry_msgs.msg.Vector3.Resolve(msg.linear)
    }
    else {
      resolved.linear = new geometry_msgs.msg.Vector3()
    }

    if (msg.angular !== undefined) {
      resolved.angular = geometry_msgs.msg.Vector3.Resolve(msg.angular)
    }
    else {
      resolved.angular = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = Odom;
