package com.sample.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.sample")
public class WebConfig {

  /**
   * Defines the InternalResourceViewResolver bean
   * 
   * <ul>
   *   <li>This bean maps logical view names to actual JSP file paths:
   *     <ul>
   *       <li> prefix: "views"</li>
   *       <li> suffix: ".jsp"</li>
   *     </ul>
   *   </li>
   * </ul>
   *
   * @return InternalResourceViewResolver instance responsible for resolving JSP files
   */
  @Bean
  public InternalResourceViewResolver viewResolver() {
    InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
    viewResolver.setPrefix("/views/");
    viewResolver.setSuffix(".jsp");
    return viewResolver;
  }

}
