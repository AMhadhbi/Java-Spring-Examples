<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:c="http://java.sun.com/jsp/jstl/core"
	xmlns:t="http://myfaces.apache.org/tomahawk">

<ui:composition>
	<h:messages showDetail="true" />
	<h:form>
    	<h:panelGrid columns="2">
			<h:outputLabel for="title" value="Title"></h:outputLabel>
			<h:inputText id="title" value="#{createSong.song.title}"></h:inputText>

			<h:outputLabel for="artist" value="Artist"></h:outputLabel>
			<h:inputText id="artist" value="#{createSong.song.artist}"></h:inputText>

			<h:outputLabel for="genre" value="Genre"></h:outputLabel>
			<h:inputText id="genre" value="#{createSong.song.genre}"></h:inputText>
		</h:panelGrid>
		<h:commandButton value="Save" action="#{createSong.save}"></h:commandButton>
		
		<t:dataTable var="song" value="#{createSong.songList}" binding="#{createSong.table}"
			rows="2">
			<h:column>
                  <f:facet name="header" >
                        <h:outputText value="Id"/>
                  </f:facet>    
        	     <h:commandLink value="#{song.id}" action="#{createSong.listSongDetail}" />
             </h:column>
             <h:column>
                  <f:facet name="header" >
                        <h:outputText value="Version"/>
                  </f:facet>    
        	     <h:outputText value="#{song.version}"/>
             </h:column>
             <h:column>
                  <f:facet name="header" >
                        <h:outputText value="Artist"/>
                  </f:facet>    
        	     <h:outputText value="#{song.artist}"/>
             </h:column>
             <h:column>
                  <f:facet name="header" >
                        <h:outputText value="Title"/>
                  </f:facet>    
        	     <h:outputText value="#{song.title}"/>
             </h:column>
             <h:column>
                  <f:facet name="header" >
                        <h:outputText value="Genre"/>
                  </f:facet>    
        	     <h:outputText value="#{song.genre}"/>
             </h:column>
             <h:column>
             	  <f:facet name="header" >
                        <h:outputText value="Delete"/>
                  </f:facet> 
                  <h:commandButton value="Delete" action="#{createSong.delete}"> 						
                  </h:commandButton>
             </h:column>
		</t:dataTable>
    </h:form>
</ui:composition>
</html>