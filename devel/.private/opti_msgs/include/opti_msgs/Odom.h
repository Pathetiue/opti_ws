// Generated by gencpp from file opti_msgs/Odom.msg
// DO NOT EDIT!


#ifndef OPTI_MSGS_MESSAGE_ODOM_H
#define OPTI_MSGS_MESSAGE_ODOM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>

namespace opti_msgs
{
template <class ContainerAllocator>
struct Odom_
{
  typedef Odom_<ContainerAllocator> Type;

  Odom_()
    : header()
    , rigidBodyID(0)
    , deltaTime(0.0)
    , position()
    , euler()
    , linear()
    , angular()  {
    }
  Odom_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , rigidBodyID(0)
    , deltaTime(0.0)
    , position(_alloc)
    , euler(_alloc)
    , linear(_alloc)
    , angular(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int32_t _rigidBodyID_type;
  _rigidBodyID_type rigidBodyID;

   typedef double _deltaTime_type;
  _deltaTime_type deltaTime;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _euler_type;
  _euler_type euler;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _linear_type;
  _linear_type linear;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _angular_type;
  _angular_type angular;





  typedef boost::shared_ptr< ::opti_msgs::Odom_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::opti_msgs::Odom_<ContainerAllocator> const> ConstPtr;

}; // struct Odom_

typedef ::opti_msgs::Odom_<std::allocator<void> > Odom;

typedef boost::shared_ptr< ::opti_msgs::Odom > OdomPtr;
typedef boost::shared_ptr< ::opti_msgs::Odom const> OdomConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::opti_msgs::Odom_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::opti_msgs::Odom_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace opti_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsMessage': True, 'IsFixedSize': False, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'opti_msgs': ['/home/yangrui/icra/project/opti_ws/src/opti_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__gt__', '__hash__', '__init__', '__le__', '__lt__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsMessage< ::opti_msgs::Odom_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opti_msgs::Odom_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::opti_msgs::Odom_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::opti_msgs::Odom_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opti_msgs::Odom_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opti_msgs::Odom_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::opti_msgs::Odom_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eca3ed57d1037c7cecff0230e5e5de39";
  }

  static const char* value(const ::opti_msgs::Odom_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeca3ed57d1037c7cULL;
  static const uint64_t static_value2 = 0xecff0230e5e5de39ULL;
};

template<class ContainerAllocator>
struct DataType< ::opti_msgs::Odom_<ContainerAllocator> >
{
  static const char* value()
  {
    return "opti_msgs/Odom";
  }

  static const char* value(const ::opti_msgs::Odom_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::opti_msgs::Odom_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
int32 rigidBodyID\n\
float64 deltaTime\n\
geometry_msgs/Vector3 position\n\
geometry_msgs/Vector3 euler\n\
geometry_msgs/Vector3 linear\n\
geometry_msgs/Vector3 angular\n\
\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::opti_msgs::Odom_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::opti_msgs::Odom_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.rigidBodyID);
      stream.next(m.deltaTime);
      stream.next(m.position);
      stream.next(m.euler);
      stream.next(m.linear);
      stream.next(m.angular);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Odom_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::opti_msgs::Odom_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::opti_msgs::Odom_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "rigidBodyID: ";
    Printer<int32_t>::stream(s, indent + "  ", v.rigidBodyID);
    s << indent << "deltaTime: ";
    Printer<double>::stream(s, indent + "  ", v.deltaTime);
    s << indent << "position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "euler: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.euler);
    s << indent << "linear: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.linear);
    s << indent << "angular: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.angular);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPTI_MSGS_MESSAGE_ODOM_H