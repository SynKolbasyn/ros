#include <ros/ros.h>
#include <test_service_client/sum_two_nums.h>

using ros::init;
using ros::NodeHandle;
using ros::ServiceServer;
using ros::spin;

bool sum(test_service_client::sum_two_nums::Request &req, test_service_client::sum_two_nums::Response &res) {
  res.sum = req.a + req.b;

  ROS_INFO("request: x=%Lf, y=%Lf", (long double)req.a, (long double)req.b);
  ROS_INFO("sending back response: [%Lf]", (long double)res.sum);

  return true;
}

int main(int argc, char** argv) {
  init(argc, argv, "server");
  NodeHandle node_handle;

  ServiceServer service = node_handle.advertiseService("sum_two_nums", sum);
  ROS_INFO("Ready to add two ints.");
  spin();

  return 0;
}

