package com.example.ajax.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/ajax80")
public class AjaxController {
	@GetMapping("/pizza/getCustomerList")
	public String getCustomerList(@RequestParam Map<String,Object> pMap, Model model) {
		System.out.println("pMap:"+pMap);
		List<Map<String,Object>> cusList = new ArrayList<>();
		Map<String,Object> rmap = new HashMap<>();
		rmap.put("mem_name", "이순신");
		rmap.put("mem_addr", "서울시 금천구 가산동");
		rmap.put("mem_tel", "55557000");
		cusList.add(rmap);
		rmap = new HashMap<>();
		rmap.put("mem_name", "김유신");
		rmap.put("mem_addr", "서울시 강서구 화곡동");
		rmap.put("mem_tel", "66667000");
		cusList.add(rmap);
		rmap = new HashMap<>();
		rmap.put("mem_name", "강감찬");
		rmap.put("mem_addr", "서울시 마포구 공덕동");
		rmap.put("mem_tel", "70007000");
		cusList.add(rmap);
		model.addAttribute("cusList",cusList);
		return "forward:/ajax80/pizza/jsonCustomer.jsp";
	}
	@PostMapping("/pizza/orderPizza")
	public String orderPizza(@RequestParam Map<String,Object> pMap, Model model) {
		System.out.println("pMap:"+pMap);
		return "redirect:/ajax80/pizza/orderConfirm.jsp";
	}
}
