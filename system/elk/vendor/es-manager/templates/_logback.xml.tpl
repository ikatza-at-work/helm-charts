<configuration>

    <conversionRule conversionWord="coloredLevel" converterClass="play.api.libs.logback.ColoredLevel"/>

    <appender name="STDOUT" class="ch.qos.logback.core.ConsoleAppender">
        <encoder>
            <pattern>%coloredLevel %logger{15} - %message%n%xException{15}</pattern>
        </encoder>
    </appender>

    <logger name="play" level="DEBUG"/>
    <logger name="application" level="DEBUG"/>

    <!-- Off these ones as they are annoying, and anyway we manage configuration ourself -->
    <logger name="com.avaje.ebean.config.PropertyMapLoader" level="DEBUG"/>
    <logger name="com.avaje.ebeaninternal.server.core.XmlConfigLoader" level="DEBUG"/>
    <logger name="com.avaje.ebeaninternal.server.lib.BackgroundThread" level="DEBUG"/>
    <logger name="com.gargoylesoftware.htmlunit.javascript" level="DEBUG"/>

    <root level="DEBUG">
        <appender-ref ref="STDOUT"/>
    </root>

</configuration>
