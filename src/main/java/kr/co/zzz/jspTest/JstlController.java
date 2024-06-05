package kr.co.zzz.jspTest;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class JstlController {
		
		@GetMapping("/step1")
		public String car_Test_01() {
			return "/jsp-test/step1";
		}

		@GetMapping("/step2")
		public String step_02(Model model) {
			Person dto = new Person("손흥민", 30);
			model.addAttribute("dto", dto);
			return "/jsp-test/step2-choose";
		}
		
		@GetMapping("/step3")
		public String step_03(Model model) {
			Person idol1 = new Person("안유진", 21);
			Person idol2 = new Person("장원영", 20);
			
			List<Person> dtos = new ArrayList<>();
			dtos.add(idol1);
			dtos.add(idol2);
			model.addAttribute("dtos", dtos);
			return "/jsp-test/step3-forEach";
	}
		
		@GetMapping("/test-main")
		public String test_main(){
			return "/jsp-test/main-test";
		}
}
