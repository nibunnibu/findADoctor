package com.self.myapp.finding;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("finding")
public class FindingController {
    private final FindingRepository findingRepository;

    @Autowired
    public FindingController(FindingRepository findingRepository) {
        this.findingRepository = findingRepository;
    }

    @GetMapping("only")
    public String finding() {
        return "Found";
    }
}
