package com.example.dogapi.controller;

import com.example.dogapi.entity.Dog;
import com.example.dogapi.service.DogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.List;
import org.springframework.beans.propertyeditors.CustomDateEditor;

@Controller
@RequestMapping("/dogs")
public class DogController {

    @Autowired
    private DogService dogService;

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(java.util.Date.class, new CustomDateEditor(dateFormat, true));
    }

    @GetMapping({"", "/api"})
    public String listDogs(Model model) {
        List<Dog> dogs = dogService.getAllDogs();
        model.addAttribute("animalList", dogs);
        return "home";
    }

    @GetMapping("/new")
    public String showCreateForm(Model model) {
        model.addAttribute("animal", new Dog());
        return "animal-create";
    }

    @PostMapping("/new")
    public String createDog(@ModelAttribute Dog dog) {
        dogService.addDog(dog);
        return "redirect:/dogs";
    }

    @GetMapping("/{id}")
    public String getDogDetails(@PathVariable Long id, Model model) {
        return dogService.getDogById(id)
                .map(dog -> {
                    model.addAttribute("animal", dog);
                    return "animal-details";
                })
                .orElse("redirect:/dogs");
    }

    @GetMapping("/update/{id}")
    public String showUpdateForm(@PathVariable Long id, Model model) {
        return dogService.getDogById(id)
                .map(dog -> {
                    model.addAttribute("animal", dog);
                    return "animal-update";
                })
                .orElse("redirect:/dogs");
    }

    @PostMapping("/update")
    public String updateDog(@ModelAttribute Dog dog) {
        dogService.updateDog(dog.getDogId(), dog);
        return "redirect:/dogs/" + dog.getDogId();
    }

    @GetMapping("/delete/{id}")
    public String deleteDog(@PathVariable Long id) {
        dogService.deleteDog(id);
        return "redirect:/dogs";
    }

    @GetMapping("/search")
    public String searchDogs(@RequestParam String name, Model model) {
        List<Dog> dogs = dogService.getDogsByNameContains(name);
        model.addAttribute("animalList", dogs);
        return "home";
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }
}
