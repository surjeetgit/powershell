Configuration InstallUtilitesSoftware {
    
    Import-DscResource -ModuleName PSDesiredStateConfiguration -Name WindowsFeature

    Node 'DESKTOP-S9UB9VK' {
        # DSC Resources
        WindowsFeature 'IISServer'
        {
            Ensure = "Present"
            # Alternatively, to ensure the role is uninstalled, set Ensure to "Absent"
            Name = "Web-Server" # Use the Name property from Get-WindowsFeature
        }
    }
}
InstallUtilitesSoftware
