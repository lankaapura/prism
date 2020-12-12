        $webConfig = "D:\tml\PrismClient.application"
        $xml = [xml](get-content $webConfig)
        $deployment = $xml.SelectSingleNode("//*[local-name()='deployment']")
        $mapFileExtensions = $xml.CreateAttribute("mapFileExtensions");
        $mapFileExtensions.set_Value("true");

        $deployment.SetAttributeNode($mapFileExtensions)
        $xml.Save($webConfig)  
