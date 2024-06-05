package kr.co.zzz.jspTest;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class CarController {
	@GetMapping("/car/step1")
	public String car_Test_01() {
		return "/jsp-test/step1";
	}
}
