package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.example.model.ProjectsRecorder;
import com.example.service.ProjectsRecorderService;

@Controller
@RequestMapping("projectsrecorder")
public class ProjectsRecorderController extends BaseController {

    private final ProjectsRecorderService projectsrecorderService;

    @Autowired
    public ProjectsRecorderController(ProjectsRecorderService projectsrecorderService) {
        this.projectsrecorderService = projectsrecorderService;
    }

    @RequestMapping("add")
    private String add(ProjectsRecorder projectsrecorder) {
        projectsrecorderService.add(projectsrecorder);
        return "redirect:/projectsrecorder/list";
    }

    @RequestMapping("remove/{id}")
    private String remove(@PathVariable("id") Integer id) {
        projectsrecorderService.remove(id);
        return "redirect:/projectsrecorder/list";
    }

    @RequestMapping("modify")
    private String modify(ProjectsRecorder projectsrecorder) {
        projectsrecorderService.modify(projectsrecorder);
        return "redirect:/projectsrecorder/list";
    }

    @RequestMapping("list/{page}")
    private String list(@PathVariable int page) {
        getSession().setAttribute("pagination", projectsrecorderService.list(page));
        return "redirect:/projectsrecorder/list.jsp";
    }

    @RequestMapping("list")
    private String list() {
        return list(1);
    }

    @RequestMapping("search/{id}")
    private String search(@PathVariable("id") Integer id) {
        getSession().setAttribute("projectsrecorder", projectsrecorderService.search(id));
        return "redirect:/projectsrecorder/edit.jsp";
    }
    @RequestMapping("querybyuser")
    private String querybyuser(){

        return "test";
    }
}