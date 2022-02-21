#' Automobile Power Generation
#'
#' This function determines the power required to keep a car moving at a given speed
#' @param v vehicle speed (mps)
#' @param m vehicle mass (kg)
#' @param a surface area of car (m^2)
#' @param g acceleration due to gravity (m/s^2) default=9.8
#' @param p_air density of air (kg/m^3) default=1.2
#' @param c_rolling rolling resistive coefficient default=0.015
#' @param c_drag aerodynamic resistive coefficient default=0.3
#' @return pb power (W)
#'
# function definition
automotive_power_generation = function(v, m, a, g=9.8, p_air=1.2, c_rolling=0.015, c_drag=0.3){
  result = c_rolling * m * g * v + (0.5 * a * p_air *c_drag * v^3)
  return(result)
}
