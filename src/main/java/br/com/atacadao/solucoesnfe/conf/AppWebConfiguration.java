package br.com.atacadao.solucoesnfe.conf;

import java.util.concurrent.TimeUnit;

import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cache.guava.GuavaCacheManager;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.format.datetime.DateFormatter;
import org.springframework.format.datetime.DateFormatterRegistrar;
import org.springframework.format.support.DefaultFormattingConversionService;
import org.springframework.format.support.FormattingConversionService;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.google.common.cache.CacheBuilder;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "br.com.atacadao.solucoesnfe")
@EnableCaching
public class AppWebConfiguration extends WebMvcConfigurerAdapter {

	@Bean
	public InternalResourceViewResolver internalResourceViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	

	@Bean
	public FormattingConversionService mvcConversionService() {
		DefaultFormattingConversionService conversionService = new DefaultFormattingConversionService(true);
		DateFormatterRegistrar registrar = new DateFormatterRegistrar();
		registrar.setFormatter(new DateFormatter("yyyy-MM-dd"));
		registrar.registerFormatters(conversionService);
		return conversionService;
	}

	@Bean
	public MessageSource messageSource() {
		ReloadableResourceBundleMessageSource bundle = new ReloadableResourceBundleMessageSource();
		bundle.setBasename("/WEB-INF/messages");
		bundle.setDefaultEncoding("UTF-8");
		return bundle;
	}

	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}

	@Bean
	public CacheManager cacheManager() {
		CacheBuilder<Object, Object> builder = CacheBuilder.newBuilder()
				.maximumSize(2000)
				.expireAfterAccess(7, TimeUnit.DAYS);
		GuavaCacheManager manager = new GuavaCacheManager();
		manager.setCacheBuilder(builder);

		return manager;
	}


}
