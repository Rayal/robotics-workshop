// Generated by gencpp from file firstpack/MyMessage.msg
// DO NOT EDIT!


#ifndef FIRSTPACK_MESSAGE_MYMESSAGE_H
#define FIRSTPACK_MESSAGE_MYMESSAGE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace firstpack
{
template <class ContainerAllocator>
struct MyMessage_
{
  typedef MyMessage_<ContainerAllocator> Type;

  MyMessage_()
    : header()
    , value(0)
    , text()  {
    }
  MyMessage_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , value(0)
    , text(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _value_type;
  _value_type value;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _text_type;
  _text_type text;




  typedef boost::shared_ptr< ::firstpack::MyMessage_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::firstpack::MyMessage_<ContainerAllocator> const> ConstPtr;

}; // struct MyMessage_

typedef ::firstpack::MyMessage_<std::allocator<void> > MyMessage;

typedef boost::shared_ptr< ::firstpack::MyMessage > MyMessagePtr;
typedef boost::shared_ptr< ::firstpack::MyMessage const> MyMessageConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::firstpack::MyMessage_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::firstpack::MyMessage_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace firstpack

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'firstpack': ['/home/tudeng/robot_ws/src/firstpack/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::firstpack::MyMessage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::firstpack::MyMessage_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::firstpack::MyMessage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::firstpack::MyMessage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::firstpack::MyMessage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::firstpack::MyMessage_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::firstpack::MyMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "23908a647d7eb6d73d4524eb9bab5c24";
  }

  static const char* value(const ::firstpack::MyMessage_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x23908a647d7eb6d7ULL;
  static const uint64_t static_value2 = 0x3d4524eb9bab5c24ULL;
};

template<class ContainerAllocator>
struct DataType< ::firstpack::MyMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "firstpack/MyMessage";
  }

  static const char* value(const ::firstpack::MyMessage_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::firstpack::MyMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
uint8 value\n\
string text\n\
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
";
  }

  static const char* value(const ::firstpack::MyMessage_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::firstpack::MyMessage_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.value);
      stream.next(m.text);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MyMessage_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::firstpack::MyMessage_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::firstpack::MyMessage_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "value: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.value);
    s << indent << "text: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.text);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FIRSTPACK_MESSAGE_MYMESSAGE_H
