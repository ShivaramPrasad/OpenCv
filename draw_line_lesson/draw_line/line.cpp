#include "DrawLine.h"

void DrawLine::set_color(Scalar c) {
  color_ = c;
  update();
}

void DrawLine::add_point(Point p) {
  points_.push_back(p);
  update();
}

void DrawLine::update() {

  int pairs = points_.size();
  //if (pairs %2) --pairs;
  if (pairs == 1) return;
  if (pairs == 0) return;

  auto it = points_.begin();

  while(pairs>1) {
    Point begin = *it;
    //--pairs;
    ++it;
    Point end = *it;
    --pairs;
    //++it;
  
    line(img_, begin, end, color_);
  }
}
