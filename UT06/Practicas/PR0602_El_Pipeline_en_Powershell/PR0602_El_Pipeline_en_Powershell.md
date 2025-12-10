```
---------------- ADMINISTRACIÓN DE SISTEMAS INFORMÁTICOS Y REDES ----------------
---------------------------------------------------------------------------------

Módulo:                     ADMINISTRACIÓN DE SISTEMAS OPERATIVOS
Profesor:                   Víctor J. González
Unidad de Trabajo:          UT06
Práctica:                   PR0602. El pipeline en Powershell
Resultados de aprendizaje:  RA7
```

# PR0602: El pipeline en Powershell

Realiza las siguientes tareas que se te piden utilizando **Powershell**. Para contestar lo mejor es que hagas una captura de pantalla donde se vea el comando que has introducido y las primeras líneas de la salida de este.

---

`WIN + R` y ejecutas `Powershell`:

---

1. El comando `Get-Date` muestra la fecha y hora actual. Muestra por pantalla únicamente el año en que estamos.

---

Ejecutas:

```shell
(Get-Date).Year
```

Y veras algo asi:

```shell
PS C:\Users\HP> (Get-Date).Year
2025
```

---

2. Uno de los requisitos de Windows 11 es que es procesador tenga **TPM** habilitado. Powershell dispone del comando `Get-TPM` que nos muestra información sobre este módulo. Muestra por pantalla, en formato tabla, las propiedades `TpmPresent`, `TpmReady`, `TpmEnabled` y `TpmActivated`.

---

Ejecutas:

```shell
Get-Tpm |Select-Object TpmPresent, TpmReady, TpmEnabled, TpmActivated |Format-Table -AutoSize
```

Y veras algo asi:

```shell
PS C:\WINDOWS\system32> Get-Tpm |Select-Object TpmPresent, TpmReady, TpmEnabled, TpmActivated |Format-Table -AutoSize

TpmPresent TpmReady TpmEnabled TpmActivated
---------- -------- ---------- ------------
      True     True       True         True
```

---

En los siguientes ejercicios trabajaremos con los ficheros devueltos por el comando `Get-ChildItem C:\Windows\System32`.

3. Muestra por pantalla el número de ficheros y directorios que hay en ese directorio.

---

Ejecutas:

```shell
Get-ChildItem C:\Windows\System32 | Measure-Object
```

Y veras algo asi:

```shell
PS C:\WINDOWS\system32> Get-ChildItem C:\Windows\System32 | Measure-Object


Count    : 4907
Average  :
Sum      :
Maximum  :
Minimum  :
Property :
```

---

4. Los objetos devueltos por el comando anterior tienen una propiedad denominada `Extension`, que indica la extensión del archivo. Calcula el número de ficheros en el directorio que tienen la extensión `.dll`.

---

Ejecutas:

```shell
Get-ChildItem C:\Windows\System32 | Where-Object Extension -eq ".dll" | Measure-Object
```

Y veras algo asi:

```shell
PS C:\WINDOWS\system32> Get-ChildItem C:\Windows\System32 | Where-Object Extension -eq ".dll" | Measure-Object


Count    : 3606
Average  :
Sum      :
Maximum  :
Minimum  :
Property :
```

---

5. Muestra los ficheros del directorio con extensión `.exe` que tengan un tamaño superior a 50000 bytes.

---

Ejecutas:

```shell
Get-ChildItem C:\Windows\System32 | Where-Object Extension -eq ".exe" | Where-Object Length -gt 50000
```

Y veras algo asi:

```shell
PS C:\WINDOWS\system32> Get-ChildItem C:\Windows\System32 | Where-Object Extension -eq ".exe" | Where-Object Length -gt 50000


    Directorio: C:\Windows\System32


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/10/2025      9:56         888832 AgentService.exe
-a----        03/10/2025     17:27         315392 AggregatorHost.exe
-a----        29/10/2025      9:56        3262808 aitstatic.exe
-a----        29/10/2025      9:56         212992 alg.exe
-a----        29/10/2025      9:56         139264 AppHostRegistrationVerifier.exe
-a----        06/02/2025     20:05         155648 appidpolicyconverter.exe
-a----        29/10/2025      9:56          79272 AppInstallerBackgroundUpdate.exe
-a----        29/10/2025      9:56          96496 ApplicationFrameHost.exe
-a----        29/10/2025      9:56         819200 ApplySettingsTemplateCatalog.exe
-a----        18/11/2025      0:50        1360912 ApplyTrustOffline.exe
-a----        07/01/2025     23:18         258048 ApproveChildRequest.exe
-a----        05/05/2025      8:40         792000 AppVClient.exe
-a----        23/10/2025     10:59         193920 AppVDllSurrogate.exe
-a----        09/07/2025     12:33         163592 appverif.exe
-a----        05/05/2025      8:40         185664 AppVNice.exe
-a----        05/05/2025      8:40         234928 AppVShNotify.exe
-a----        25/09/2025     13:33         135168 AssignedAccessGuard.exe
-a----        29/10/2025      9:56         147456 AtBroker.exe
-a----        29/10/2025      9:56         881592 audiodg.exe
-a----        06/02/2025     20:05          61440 auditpol.exe
-a----        29/10/2025      9:56         158456 AuthHost.exe
-a----        01/04/2024      9:22        1044480 autochk.exe
-a----        23/10/2025     10:59          94208 autofstx.exe
-a----        07/01/2025     23:18          86016 AxInstUI.exe
-a----        01/04/2024      9:22          50496 backgroundTaskHost.exe
-a----        01/04/2024      9:22          61440 BackgroundTransferHost.exe
-a----        06/02/2025     20:05          86016 bash.exe
-a----        25/09/2025     13:33         282624 bcdboot.exe
-a----        29/10/2025      9:56         521616 bcdedit.exe
-a----        29/10/2025      9:56         438272 bdechangepin.exe
-a----        05/05/2025      8:40         155648 BdeHdCfg.exe
-a----        29/10/2025      9:56          86016 BdeUISrv.exe
-a----        25/09/2025     13:34         286560 bdeunlock.exe
-a----        29/10/2025      9:56         679144 BioIso.exe
-a----        29/10/2025      9:56         196608 BitLockerDeviceEncryption.exe
-a----        05/05/2025      8:40         126976 BitLockerWizard.exe
-a----        05/05/2025      8:40         126976 BitLockerWizardElev.exe
-a----        29/10/2025      9:56         241664 bitsadmin.exe
-a----        29/10/2025      9:56          53248 bootim.exe
-a----        25/09/2025     13:33         112032 bootsect.exe
-a----        03/10/2025     17:25         159744 browserexport.exe
-a----        07/01/2025     23:17          67016 browser_broker.exe
-a----        23/10/2025     10:59          69632 bthudtask.exe
-a----        07/01/2025     23:17         114688 ByteCodeGenerator.exe
-a----        01/04/2024      9:22          61440 cacls.exe
-a----        07/01/2025     23:18          63336 CameraSettingsUIHost.exe
-a----        29/10/2025      9:56          92384 CastSrv.exe
-a----        29/10/2025      9:56         163840 CCG.exe
-a----        29/10/2025      9:56         126976 CertEnrollCtrl.exe
-a----        29/10/2025      9:56         540672 certreq.exe
-a----        29/10/2025      9:56        1593344 certutil.exe
-a----        29/10/2025      9:56         271744 CExecSvc.exe
-a----        07/01/2025     23:18         129464 changepk.exe
-a----        29/10/2025      9:56         290816 charmap.exe
-a----        07/01/2025     23:18          69632 CheckNetIsolation.exe
-a----        07/01/2025     23:17          53248 chkdsk.exe
-a----        01/04/2024      9:22          57344 choice.exe
-a----        03/10/2025     17:25          65536 CIDiag.exe
-a----        07/01/2025     23:17          77824 cipher.exe
-a----        07/01/2025     23:17         382368 CiTool.exe
-a----        29/10/2025      9:56         307200 cleanmgr.exe
-a----        07/01/2025     23:17          53248 cliconfg.exe
-a----        01/04/2024      9:22          57344 clip.exe
-a----        18/11/2025      0:50         147456 ClipDLS.exe
-a----        29/10/2025      9:56         144800 ClipRenew.exe
-a----        18/11/2025      0:50        1146048 ClipUp.exe
-a----        07/01/2025     23:17          95648 CloudExperienceHostBroker.exe
-a----        29/10/2025      9:56         113000 CloudNotifications.exe
-a----        29/10/2025      9:56         344064 cmd.exe
-a----        29/10/2025      9:56         476544 cmdiag.exe
-a----        07/01/2025     23:18          77824 cmdl32.exe
-a----        29/10/2025      9:56         274432 cmimageworker.exe
-a----        29/10/2025      9:56         106496 cmmon32.exe
-a----        29/10/2025      9:56         120192 cmproxyd.exe
-a----        07/01/2025     23:18         122880 cmstp.exe
-a----        07/01/2025     23:18         110592 colorcpl.exe
-a----        01/04/2024      9:22          73728 compact.exe
-a----        29/10/2025      9:56         203112 CompatTelRunner.exe
-a----        07/01/2025     23:17         114688 CompMgmtLauncher.exe
-a----        23/10/2025     10:59         118784 CompPkgSrv.exe
-a----        07/01/2025     23:17          73728 ComputerDefaults.exe
-a----        29/10/2025      9:56        1015808 conhost.exe
-a----        29/10/2025      9:56         259496 consent.exe
-a----        25/09/2025     13:34         122880 control.exe
-a----        03/10/2025     17:27         238992 convertvhd.exe
-a----        03/10/2025     17:25          81920 coredpussvr.exe
-a----        29/10/2025      9:56         447696 CredentialEnrollmentManager.exe
-a----        29/10/2025      9:56         220448 CredentialUIBroker.exe
-a----        10/03/2025     10:26          65536 credwiz.exe
-a----        29/10/2025      9:56         192512 cscript.exe
-a----        29/10/2025      9:56          69632 ctfmon.exe
-a----        01/04/2024      9:22         114688 cttune.exe
-a----        03/10/2025     17:25          65536 cttunesvr.exe
-a----        29/10/2025      9:56         742960 curl.exe
-a----        29/10/2025      9:56         163840 CustomInstallExec.exe
-a----        29/10/2025      9:56        1683456 CustomShellHost.exe
-a----        29/10/2025      9:56         524288 d3dconfig.exe
-a----        29/10/2025      9:56         200704 dasHost.exe
-a----        25/09/2025     13:34         267720 DataExchangeHost.exe
-a----        29/10/2025      9:56         200704 DataStoreCacheDumpTool.exe
-a----        29/10/2025      9:56         151552 dccw.exe
-a----        01/04/2024      9:22          69632 ddodiag.exe
-a----        03/10/2025     17:25         241664 Defrag.exe
-a----        01/04/2024      9:22          61440 deploymentcsphelper.exe
-a----        29/10/2025      9:56         155648 desktopimgdownldr.exe
-a----        29/10/2025      9:56         152960 DeviceCensus.exe
-a----        07/01/2025     23:17         122880 DeviceCredentialDeployment.exe
-a----        29/10/2025      9:56         565248 DeviceEnroller.exe
-a----        07/01/2025     23:17         122880 DevicePairingWizard.exe
-a----        01/04/2024      9:22          94208 DeviceProperties.exe
-a----        07/01/2025     23:17          77824 DFDWiz.exe
-a----        29/10/2025      9:56         143360 dfrgui.exe
-a----        03/10/2025     17:27          69632 dialer.exe
-a----        29/10/2025      9:56         176128 directxdatabaseupdater.exe
-a----        07/01/2025     23:17         176128 diskpart.exe
-a----        01/04/2024      9:22         356352 diskraid.exe
-a----        07/01/2025     23:18          98304 DiskSnapshot.exe
-a----        29/10/2025      9:56          86016 diskusage.exe
-a----        03/10/2025     17:25         329128 Dism.exe
-a----        29/10/2025      9:56         200704 dispdiag.exe
-a----        07/01/2025     23:17        1877392 DisplaySwitch.exe
-a----        01/04/2024      9:22         106496 djoin.exe
-a----        07/01/2025     23:17          50504 dllhost.exe
-a----        29/10/2025      9:56         204800 dmcertinst.exe
-a----        29/10/2025      9:56          65536 dmcfghost.exe
-a----        29/10/2025      9:56         172032 dmclient.exe
-a----        01/04/2024      9:22          53248 DmNotificationBroker.exe
-a----        03/10/2025     17:25          61440 DmOmaCpMo.exe
-a----        01/04/2024      9:22          61440 dnscacheugc.exe
-a----        01/04/2024      9:22         102400 dpapimig.exe
-a----        01/04/2024      9:22         102400 DpiScaling.exe
-a----        25/09/2025     13:34         106496 driverquery.exe
-a----        29/10/2025      9:56         442368 drvinst.exe
-a----        25/09/2025     13:34          57344 DsmUserTask.exe
-a----        29/10/2025      9:56         524288 dsregcmd.exe
-a----        29/10/2025      9:56         159744 dtdump.exe
-a----        29/10/2025      9:56          77824 dusmtask.exe
-a----        29/10/2025      9:56         131072 dwm.exe
-a----        29/10/2025      9:56         262144 DWWIN.EXE
-a----        29/10/2025      9:56        1191936 DXCap.exe
-a----        29/10/2025      9:56         454656 DXCpl.exe
-a----        29/10/2025      9:56         327680 dxdiag.exe
-a----        29/10/2025      9:56         151552 dxgiadaptercache.exe
-a----        03/10/2025     17:25         311296 Dxpserver.exe
-a----        29/10/2025      9:56         323584 EaseOfAccessDialog.exe
-a----        29/10/2025      9:56         100608 easinvoker.exe
-a----        25/09/2025     13:34          94208 EASPolicyManagerBrokerHost.exe
-a----        23/10/2025     10:59         266800 edit.exe
-a----        29/10/2025      9:56         167936 EDPCleanup.exe
-a----        29/10/2025      9:56          98304 edpnotify.exe
-a----        29/10/2025      9:56         143360 EduPrintProv.exe
-a----        07/01/2025     23:17         151552 EhStorAuthn.exe
-a----        29/10/2025      9:56         176128 EoAExperiences.exe
-a----        27/03/2025     19:15         847872 esentutl.exe
-a----        07/01/2025     23:17          62768 esimtool.exe
-a----        07/01/2025     23:17         380928 eudcedit.exe
-a----        25/09/2025     13:34          69632 eventcreate.exe
-a----        29/10/2025      9:56         106496 eventvwr.exe
-a----        01/04/2024      9:22          73728 expand.exe
-a----        07/01/2025     23:17          61440 extrac32.exe
-a----        29/10/2025      9:56         513824 fclip.exe
-a----        07/01/2025     23:18         163840 fhmanagew.exe
-a----        03/10/2025     17:26         159744 FileDialogBroker.exe
-a----        18/11/2025      0:50         258048 FileHistory.exe
-a----        29/10/2025      9:56          65536 findstr.exe
-a----        07/01/2025     23:18          53248 fltMC.exe
-a----        07/01/2025     23:18          73728 fodhelper.exe
-a----        07/01/2025     23:17         139264 Fondue.exe
-a----        29/10/2025      9:56         832008 fontdrvhost.exe
-a----        07/01/2025     23:17         151552 fontview.exe
-a----        07/01/2025     23:17          73728 forfiles.exe
-a----        23/10/2025     10:59         137816 FsIso.exe
-a----        29/10/2025      9:56         196608 fsquirt.exe
-a----        29/10/2025      9:56         284032 fsutil.exe
-a----        07/01/2025     23:17          86016 ftp.exe
-a----        07/01/2025     23:18         217088 fvenotify.exe
-a----        05/05/2025      8:40         188416 fveprompt.exe
-a----        07/01/2025     23:17         372736 GameBarPresenceWriter.exe
-a----        29/10/2025      9:56          80240 GameInputSvc.exe
-a----        03/10/2025     17:27        1335296 GamePanel.exe
-a----        25/09/2025     13:34         658480 GenValObj.exe
-a----        01/04/2024      9:22         106496 getmac.exe
-a----        29/10/2025      9:56         290816 gpresult.exe
-a----        29/10/2025      9:56         118784 gpscript.exe
-a----        29/10/2025      9:56          86016 gpupdate.exe
-a----        05/05/2025      9:07         365984 hcsdiag.exe
-a----        01/04/2024      9:22          81920 hdwwiz.exe
-a----        29/10/2025      9:56         249856 hnsdiag.exe
-a----        08/12/2023      9:19         144680 HPMUIDir.exe
-a----        18/11/2025      0:50        1971584 hvax64.exe
-a----        06/02/2025     20:20         173496 hvc.exe
-a----        18/11/2025      0:50        2053504 hvix64.exe
-a----        29/10/2025      9:56         189856 hvsievaluator.exe
-a----        29/10/2025      9:56         139264 hvsiproxyapp.exe
-a----        15/10/2025     13:28         177536 HvsiSettingsWorker.exe
-a----        07/01/2025     23:17          61440 icacls.exe
-a----        25/09/2025     13:34          51064 icsunattend.exe
-a----        29/10/2025      9:56         286720 ie4uinit.exe
-a----        29/10/2025      9:56         131072 ie4ushowIE.exe
-a----        29/10/2025      9:56         557056 IESettingSync.exe
-a----        07/01/2025     23:18         102400 ieUnatt.exe
-a----        29/10/2025      9:56         196608 iexpress.exe
-a----        10/03/2025     10:27         147456 immersivetpmvscmgrsvr.exe
-a----        29/10/2025      9:56         135168 InputSwitchToastHandler.exe
-a----        25/09/2025     13:34         169400 iotstartup.exe
-a----        29/10/2025      9:56          61440 ipconfig.exe
-a----        29/10/2025      9:56          73728 iscsicli.exe
-a----        15/05/2025      9:42          61440 ISM.exe
-a----        03/10/2025     17:26         147456 isoburn.exe
-a----        01/04/2024      9:22          65536 klist.exe
-a----        07/01/2025     23:17          65536 ksetup.exe
-a----        06/02/2025     20:05          77824 LanguageComponentsInstallerComHandler.exe
-a----        29/10/2025      9:56          86016 LaunchWinApp.exe
-a----        29/10/2025      9:56         225280 LegacyNetUXHost.exe
-a----        29/10/2025      9:56          77824 LicenseManagerShellext.exe
-a----        29/10/2025      9:56         561152 licensingdiag.exe
-a----        07/01/2025     23:18         174904 LicensingUI.exe
-a----        29/10/2025      9:56         188416 LiveCaptions.exe
-a----        29/10/2025      9:56         100608 LockAppHost.exe
-a----        25/09/2025     13:33          75832 LockScreenContentServer.exe
-a----        07/01/2025     23:18         106496 lodctr.exe
-a----        03/10/2025     17:26         131072 logagent.exe
-a----        07/01/2025     23:18         118784 logman.exe
-a----        29/10/2025      9:56          81920 LogonUI.exe
-a----        03/10/2025     17:26          61440 lpkinstall.exe
-a----        29/10/2025      9:56         741376 lpksetup.exe
-a----        29/10/2025      9:56         131072 lpremove.exe
-a----        29/10/2025      9:56         398160 LsaIso.exe
-a----        29/10/2025      9:56          84096 lsass.exe
-a----        29/10/2025      9:56         831488 Magnify.exe
-a----        01/04/2024      9:22         110592 makecab.exe
-a----        29/10/2025      9:56         286720 manage-bde.exe
-a----        15/10/2025     13:28         247168 ManagedWindowsVM.exe
-a----        23/10/2025     10:59         222592 mavinject.exe
-a----        07/01/2025     23:18         843776 mblctr.exe
-a----        29/10/2025      9:56         356352 MBR2GPT.EXE
-a----        06/02/2025     20:05         131072 mcbuilder.exe
-a----        29/10/2025      9:56         483328 MDEServer.exe
-a----        29/10/2025      9:56         176128 MDMAgent.exe
-a----        29/10/2025      9:56         196608 MDMAppInstaller.exe
-a----        03/10/2025     17:25          90112 MdmDiagnosticsTool.exe
-a----        03/10/2025     17:26         110592 MdRes.exe
-a----        29/10/2025      9:56         155648 MdSched.exe
-a----        29/10/2025      9:56          75840 mfpmp.exe
-a----        29/10/2025      9:56          86016 Microsoft.Data.UsageAndQualityInsights.Main
                                                  tenanceTask.exe
-a----        03/10/2025     17:25         339968 Microsoft.Uev.CscUnpinTool.exe
-a----        05/05/2025      8:40          83968 Microsoft.Uev.SyncController.exe
-a----        09/07/2025     12:33          51544 microsoft.windows.softwarelogo.showdesktop.
                                                  exe
-a----        25/09/2025     13:34         114688 MicrosoftEdgeBCHost.exe
-a----        07/01/2025     23:17         114688 MicrosoftEdgeCP.exe
-a----        25/09/2025     13:34         114688 MicrosoftEdgeDevTools.exe
-a----        07/01/2025     23:17          81920 MicrosoftEdgeSH.exe
-a----        29/10/2025      9:56         593920 MidiSrv.exe
-a----        03/10/2025     17:27          86016 MLEngineStub.exe
-a----        29/10/2025      9:56        1859584 mmc.exe
-a----        07/01/2025     23:18        1327104 mmgaserver.exe
-a----        07/01/2025     23:17         131072 mobsync.exe
-a----        03/10/2025     17:27          86016 MoNotificationUxStub.exe
-a----        14/09/2024     19:39         918944 MpSigStub.exe
-a----        29/10/2025      9:56         166760 MptfGenericService.exe
-a----        18/11/2025     10:55      215625816 MRT.exe
-a----        01/04/2024      9:22         106496 MSchedExe.exe
-a----        29/10/2025      9:56         253952 msconfig.exe
-a----        23/10/2025     10:59         557056 msdt.exe
-a----        29/10/2025      9:56         208896 msdtc.exe
-a----        03/10/2025     17:26         180224 msiexec.exe
-a----        29/10/2025      9:56         380928 msinfo32.exe
-a----        29/10/2025      9:56         614400 msra.exe
-a----        29/10/2025      9:56         135168 MsSpellCheckingHost.exe
-a----        29/10/2025      9:56        1384448 mstsc.exe
-a----        07/01/2025     23:18         155648 mtstocom.exe
-a----        29/10/2025      9:56         118784 MuiUnattend.exe
-a----        07/01/2025     23:18          81920 MultiDigiMon.exe
-a----        29/10/2025      9:56        1024000 Narrator.exe
-a----        07/01/2025     23:18          94208 ndadmin.exe
-a----        07/01/2025     23:18          58800 NDKPerfCmd.exe
-a----        07/01/2025     23:18          58800 NDKPing.exe
-a----        29/10/2025      9:56          81920 net.exe
-a----        29/10/2025      9:56         184320 net1.exe
-a----        29/10/2025      9:56         110592 netcfg.exe
-a----        07/01/2025     23:18          98304 NetCfgNotifyObjectHost.exe
-a----        07/01/2025     23:18          57344 NetEvtFwdr.exe
-a----        07/01/2025     23:18          57344 netiougc.exe
-a----        07/01/2025     23:17          69632 Netplwiz.exe
-a----        29/10/2025      9:56         126976 netsh.exe
-a----        25/09/2025     13:34          69632 NETSTAT.EXE
-a----        07/01/2025     23:18          94208 newdev.exe
-a----        29/10/2025      9:56         736984 NgcIso.exe
-a----        29/10/2025      9:56         602112 nltest.exe
-a----        29/10/2025      9:56         128384 nmbind.exe
-a----        29/10/2025      9:56         402816 nmscrub.exe
-a----        03/10/2025     17:26         360448 notepad.exe
-a----        29/10/2025      9:56         114688 nslookup.exe
-a----        18/11/2025      0:50       12969376 ntoskrnl.exe
-a----        03/10/2025     17:26          94208 ntprint.exe
-a----        29/10/2025      9:56         439680 nvspinfo.exe
-a----        29/10/2025      9:56         102400 odbcad32.exe
-a----        03/10/2025     17:26         102400 ofdeploy.exe
-a----        29/10/2025      9:56         585728 omadmclient.exe
-a----        29/10/2025      9:56         172032 omadmprc.exe
-a----        03/10/2025     17:27       89771848 OneDriveSetup.exe
-a----        15/05/2025      9:42          98304 OobeShellHost.exe
-a----        25/09/2025     13:34          94208 openfiles.exe
-a----        29/10/2025      9:56         174992 OpenWith.exe
-a----        07/01/2025     23:17         139264 OptionalFeatures.exe
-a----        29/10/2025      9:56         593920 osk.exe
-a----        07/01/2025     23:17          69632 PackagedCWALauncher.exe
-a----        10/03/2025     10:27         106496 PackageInspector.exe
-a----        29/10/2025      9:56         483328 pairtool.exe
-a----        29/10/2025      9:56          92376 PasswordOnWakeSettingFlyout.exe
-a----        29/10/2025      9:56         126976 pcalua.exe
-a----        29/10/2025      9:56         249856 pcaui.exe
-a----        29/10/2025      9:56         180224 perfmon.exe
-a----        07/01/2025     23:18         133688 phoneactivate.exe
-a----        29/10/2025      9:56         174976 PickerHost.exe
-a----        29/10/2025      9:56         135168 PinEnrollmentBroker.exe
-a----        29/10/2025      9:56         294912 PkgMgr.exe
-a----        29/10/2025      9:56         701848 PktMon.exe
-a----        01/04/2024      9:22          77824 PnPUnattend.exe
-a----        18/11/2025      0:50         282624 pnputil.exe
-a----        11/10/2025      5:44         651264 poqexec.exe
-a----        29/10/2025      9:56         192512 powercfg.exe
-a----        27/03/2025     19:16         278528 PresentationHost.exe
-a----        05/05/2025      8:40         258048 PresentationSettings.exe
-a----        03/10/2025     17:26          61440 prevhost.exe
-a----        29/10/2025      9:56         139264 PrintBrmUi.exe
-a----        29/10/2025      9:56         585728 printfilterpipelinesvc.exe
-a----        03/10/2025     17:26         122880 PrintIsolationHost.exe
-a----        03/10/2025     17:26          94208 printui.exe
-a----        07/01/2025     23:17          73728 proquota.exe
-a----        20/03/2025     18:07          86016 provlaunch.exe
-a----        20/03/2025     18:07         114688 provtool.exe
-a----        03/10/2025     17:26         286568 ProximityUxHost.exe
-a----        29/10/2025      9:56         393216 psr.exe
-a----        07/01/2025     23:17          57344 pwlauncher.exe
-a----        05/05/2025      8:40          53248 qwinsta.exe
-a----        03/10/2025     17:26         159744 raserver.exe
-a----        29/10/2025      9:56          65536 rasphone.exe
-a----        29/10/2025      9:56         569344 rdpclip.exe
-a----        29/10/2025      9:56         533920 rdpinit.exe
-a----        29/10/2025      9:56         266240 rdpinput.exe
-a----        07/01/2025     23:17          81920 RdpSa.exe
-a----        07/01/2025     23:17          65536 RdpSaProxy.exe
-a----        29/10/2025      9:56          61440 RdpSaUacHelper.exe
-a----        29/10/2025      9:56        1205632 rdpshell.exe
-a----        05/05/2025      8:40         122880 rdpsign.exe
-a----        29/10/2025      9:56          77824 rdrleakdiag.exe
-a----        25/09/2025     13:34         106496 readCloudDataSettings.exe
-a----        29/10/2025      9:56         114688 ReAgentc.exe
-a----        03/10/2025     17:26         217088 recdisc.exe
-a----        29/10/2025      9:56         356352 RecoveryDrive.exe
-a----        29/10/2025      9:56        2199552 ReFsDedupSvc.exe
-a----        29/10/2025      9:56        1945600 refsutil.exe
-a----        03/10/2025     17:26         110592 reg.exe
-a----        03/10/2025     17:26          69632 regini.exe
-a----        01/04/2024      9:22          53248 Register-CimProvider.exe
-a----        29/10/2025      9:56          90112 regsvr32.exe
-a----        07/01/2025     23:17         147456 rekeywiz.exe
-a----        07/01/2025     23:18          77824 relog.exe
-a----        29/10/2025      9:56         258048 RelPost.exe
-a----        25/09/2025     13:34         155648 repair-bde.exe
-a----        29/10/2025      9:56         139264 resmon.exe
-a----        29/10/2025      9:56         150192 rgnupdt.exe
-a----        25/09/2025     13:34         593920 RMActivate.exe
-a----        25/09/2025     13:34         622592 RMActivate_isv.exe
-a----        25/09/2025     13:34         524288 RMActivate_ssp.exe
-a----        25/09/2025     13:34         524288 RMActivate_ssp_isv.exe
-a----        10/03/2025     10:27         143360 rmttpmvscmgrsvr.exe
-a----        29/10/2025      9:56         204800 Robocopy.exe
-a----        07/01/2025     23:17          57344 RpcPing.exe
-a----        07/01/2025     23:18          77824 rrinstaller.exe
-a----        29/10/2025      9:56         335872 rstrui.exe
-a----        29/10/2025      9:56          98304 rundll32.exe
-a----        03/10/2025     17:27         110592 runexehelper.exe
-a----        07/01/2025     23:17          53248 RunLegacyCPLElevated.exe
-a----        29/10/2025      9:56         122880 runonce.exe
-a----        29/10/2025      9:56         133680 RuntimeBroker.exe
-a----        25/09/2025     13:34         102400 sc.exe
-a----        23/10/2025     11:00         253952 schtasks.exe
-a----        29/10/2025      9:56         299008 sdbinst.exe
-a----        29/10/2025      9:56          98304 sdchange.exe
-a----        03/10/2025     17:26        1097728 sdclt.exe
-a----        07/01/2025     23:17          77824 sdiagnhost.exe
-a----        29/10/2025      9:56         512000 SearchFilterHost.exe
-a----        29/10/2025      9:56        1011712 SearchIndexer.exe
-a----        29/10/2025      9:56         700416 SearchProtocolHost.exe
-a----        29/10/2025      9:56          73728 SecEdit.exe
-a----        18/11/2025      0:50        1320336 securekernel.exe
-a----        29/10/2025      9:56         120192 SecurityHealthHost.exe
-a----        29/10/2025      9:56         146080 SecurityHealthService.exe
-a----        07/01/2025     23:18         270336 SecurityHealthSystray.exe
-a----        25/09/2025     13:34        1191936 SensorDataService.exe
-a----        29/10/2025      9:56         106496 SensorRuntimeBroker.exe
-a----        29/10/2025      9:56         906376 services.exe
-a----        03/10/2025     17:27         108864 sessionmsg.exe
-a----        29/10/2025      9:56         172032 sethc.exe
-a----        01/04/2024      9:22          57344 setspn.exe
-a----        29/10/2025      9:56         249856 setupugc.exe
-a----        01/04/2024      9:22          86016 setx.exe
-a----        29/10/2025      9:56         110592 sfc.exe
-a----        29/10/2025      9:56        1728656 ShellAppRuntime.exe
-a----        29/10/2025      9:56         557056 ShellHost.exe
-a----        25/09/2025     13:34          77824 shrpubw.exe
-a----        29/10/2025      9:56          57344 shutdown.exe
-a----        01/04/2024      9:22         102400 sigverif.exe
-a----        29/10/2025      9:56         552760 SIHClient.exe
-a----        29/10/2025      9:56         139264 sihost.exe
-a----        29/10/2025      9:56         712704 slui.exe
-a----        29/10/2025      9:56         610304 smartscreen.exe
-a----        29/10/2025      9:56         228728 smss.exe
-a----        03/10/2025     17:25         311360 SndVol.exe
-a----        29/10/2025      9:56         229376 SpaceAgent.exe
-a----        29/10/2025      9:56         112000 spaceman.exe
-a----        29/10/2025      9:56         532480 spaceutil.exe
-a----        29/10/2025      9:56         196608 SpatialAudioLicenseSrv.exe
-a----        29/10/2025      9:56         991232 spoolsv.exe
-a----        29/10/2025      9:56         966656 spoolsvworker.exe
-a----        29/10/2025      9:56         577536 SppExtComObj.Exe
-a----        18/11/2025      0:50        4827648 sppsvc.exe
-a----        01/04/2024      9:22          81920 SrTasks.exe
-a----        29/10/2025      9:56         196608 stordiag.exe
-a----        07/01/2025     23:17         936368 sudo.exe
-a----        03/10/2025     17:26          88232 svchost.exe
-a----        07/01/2025     23:18          65536 sxstrace.exe
-a----        05/05/2025      8:40          71072 SyncAppvPublishingServer.exe
-a----        03/10/2025     17:27          69632 SyncHost.exe
-a----        21/05/2024      4:38        4456576 SynTPEnh.exe
-a----        21/05/2024      4:37         418944 SynTPEnhService.exe
-a----        29/10/2025      9:56          75176 SysResetErr.exe
-a----        25/09/2025     13:34         126976 systeminfo.exe
-a----        01/04/2024      9:22         106496 SystemPropertiesAdvanced.exe
-a----        01/04/2024      9:22         106496 SystemPropertiesComputerName.exe
-a----        01/04/2024      9:22         106496 SystemPropertiesDataExecutionPrevention.exe
-a----        01/04/2024      9:22         106496 SystemPropertiesHardware.exe
-a----        01/04/2024      9:22         106496 SystemPropertiesPerformance.exe
-a----        01/04/2024      9:22         106496 SystemPropertiesProtection.exe
-a----        01/04/2024      9:22         106496 SystemPropertiesRemote.exe
-a----        29/10/2025      9:56         798976 SystemSettingsAdminFlows.exe
-a----        29/10/2025      9:56         232832 SystemSettingsBroker.exe
-a----        03/10/2025     17:27          67544 SystemSettingsRemoveDevice.exe
-a----        29/10/2025      9:56         118784 SystemUWPLauncher.exe
-a----        07/01/2025     23:18         114688 tabcal.exe
-a----        01/04/2024      9:22          90112 takeown.exe
-a----        29/10/2025      9:56          92192 tar.exe
-a----        29/10/2025      9:56         117136 taskhostw.exe
-a----        01/04/2024      9:22         118784 taskkill.exe
-a----        01/04/2024      9:22         122880 tasklist.exe
-a----        18/11/2025      0:50        5559008 Taskmgr.exe
-a----        18/11/2025      0:50         975696 tcblaunch.exe
-a----        03/10/2025     17:27          90112 ThumbnailExtractionHost.exe
-a----        03/10/2025     17:27         348160 TieringEngineService.exe
-a----        01/04/2024      9:22          57344 timeout.exe
-a----        07/01/2025     23:18          77824 TokenBrokerCookies.exe
-a----        01/04/2024      9:22          94208 TpmInit.exe
-a----        29/10/2025      9:56         385024 TpmTool.exe
-a----        10/03/2025     10:27         126976 tpmvscmgr.exe
-a----        10/03/2025     10:27         143360 tpmvscmgrsvr.exe
-a----        03/10/2025     17:26         430080 tracerpt.exe
-a----        07/01/2025     23:17          94208 TSTheme.exe
-a----        03/10/2025     17:27         118784 TSWbPrxy.exe
-a----        03/10/2025     17:27         311336 ttdinject.exe
-a----        03/10/2025     17:27         137808 tttracer.exe
-a----        07/01/2025     23:18          81920 typeperf.exe
-a----        29/10/2025      9:56         252416 tzsync.exe
-a----        01/04/2024      9:22          65536 tzutil.exe
-a----        25/09/2025     13:34          57344 UCConfigTask.exe
-a----        29/10/2025      9:56         188416 UCPDMgr.exe
-a----        07/01/2025     23:17          75168 ucsvc.exe
-a----        05/05/2025      8:40          55808 UevAppMonitor.exe
-a----        23/10/2025     11:00         447360 UIEOrchestrator.exe
-a----        25/09/2025     13:34          69632 UIMgrBroker.exe
-a----        07/01/2025     23:18          86016 unlodctr.exe
-a----        07/01/2025     23:18         262144 unregmp2.exe
-a----        29/10/2025      9:56         195688 upfc.exe
-a----        15/05/2025      9:42          77824 UpgradeResultsUI.exe
-a----        03/10/2025     17:27          73728 upnpcont.exe
-a----        29/10/2025      9:56         122880 UPPrinterInstaller.exe
-a----        07/01/2025     23:17          75840 UserAccountBroker.exe
-a----        29/10/2025      9:56         155648 UserAccountControlSettings.exe
-a----        29/10/2025      9:56          69632 UserDataSource.exe
-a----        29/10/2025      9:56         139264 userinit.exe
-a----        03/10/2025     17:27          86016 UsoClient.exe
-a----        29/10/2025      9:56         176128 UtcDecoderHost.exe
-a----        29/10/2025      9:56         315392 Utilman.exe
-a----        07/01/2025     23:17          57344 VaultCmd.exe
-a----        29/10/2025      9:56         741376 vds.exe
-a----        07/01/2025     23:18          77824 vdsldr.exe
-a----        29/10/2025      9:56         214440 verifier.exe
-a----        07/01/2025     23:17         204800 verifiergui.exe
-a----        01/10/2025     13:53         552960 vfpctrl.exe
-a----        29/10/2025      9:56        4351360 vmcompute.exe
-a----        29/10/2025      9:56        1607040 VmComputeAgent.exe
-a----        29/10/2025      9:56        1234432 vmconnect.exe
-a----        18/11/2025      0:50       13993416 vmms.exe
-a----        05/05/2025      9:07          71624 vmplatformca.exe
-a----        05/05/2025      9:07         191576 vmsp.exe
-a----        29/10/2025      9:56        3703728 vmwp.exe
-a----        29/10/2025      9:56         262144 VoiceAccess.exe
-a----        31/03/2024     16:47        5656576 VsGraphicsDesktopEngine.exe
-a----        29/10/2025      9:56        4751360 VsGraphicsRemoteEngine.exe
-a----        09/07/2024     21:34         385528 vsjitdebugger.exe
-a----        03/10/2025     17:27         167936 vssadmin.exe
-a----        23/10/2025     11:00        1474560 VSSVC.exe
-a----        02/06/2025     21:09        2082560 vulkaninfo-1-999-0-0-0.exe
-a----        02/06/2025     21:09        2082560 vulkaninfo.exe
-a----        29/10/2025      9:56         274432 w32tm.exe
-a----        01/04/2024      9:22          65536 waitfor.exe
-a----        29/10/2025      9:56         380928 wbadmin.exe
-a----        29/10/2025      9:56        1540096 wbengine.exe
-a----        15/05/2025      9:41         116168 wcsetupagent.exe
-a----        06/02/2025     20:20          62896 WDAGNetDiag.exe
-a----        01/04/2024      9:22         131072 wecutil.exe
-a----        29/10/2025      9:56         648592 WerFault.exe
-a----        29/10/2025      9:56         232888 WerFaultSecure.exe
-a----        29/10/2025      9:56         296336 wermgr.exe
-a----        29/10/2025      9:56         299008 wevtutil.exe
-a----        29/10/2025      9:56         172032 wextract.exe
-a----        01/04/2024      9:22          65536 where.exe
-a----        07/01/2025     23:17          98304 whoami.exe
-a----        03/10/2025     17:27         126976 wiaacmgr.exe
-a----        03/10/2025     17:27          65536 wiawow64.exe
-a----        29/10/2025      9:56         128408 wifitask.exe
-a----        29/10/2025      9:56         640424 wimserv.exe
-a----        29/10/2025      9:56         110592 WinBioDataModelOOBE.exe
-a----        29/10/2025      9:56        7928280 WinCsFlags.exe
-a----        29/10/2025      9:56          94208 Windows.WARP.JITService.exe
-a----        29/10/2025      9:56          86016 WindowsActionDialog.exe
-a----        29/10/2025      9:56        1074576 WindowsSandbox.exe
-a----        29/10/2025      9:56         357760 WindowsSandboxClient.exe
-a----        06/02/2025     20:05          69632 WindowsUpdateElevatedInstaller.exe
-a----        18/11/2025      0:50         790680 wininit.exe
-a----        18/11/2025      0:50        1866208 winload.exe
-a----        18/11/2025      0:50         958464 winlogon.exe
-a----        29/10/2025      9:56        1461200 winresume.exe
-a----        29/10/2025      9:56          77824 winrs.exe
-a----        29/10/2025      9:56          57344 winrshost.exe
-a----        29/10/2025      9:56        2768896 WinSAT.exe
-a----        29/10/2025      9:56         311336 wkspbroker.exe
-a----        03/10/2025     17:27         425984 wksprt.exe
-a----        29/10/2025      9:56         151552 wlanext.exe
-a----        29/10/2025      9:56         154344 wlrmdr.exe
-a----        23/10/2025     11:00        1519616 WMPDMC.exe
-a----        03/10/2025     17:25         114688 WorkFolders.exe
-a----        29/10/2025      9:56        1253480 WpcMon.exe
-a----        29/10/2025      9:56         299008 WpcTok.exe
-a----        07/01/2025     23:18          57344 WPDShextAutoplay.exe
-a----        29/10/2025      9:56         401408 wpr.exe
-a----        01/04/2024      9:22         102400 WSCollect.exe
-a----        29/10/2025      9:56         200704 wscript.exe
-a----        03/10/2025     17:26         258048 wsl.exe
-a----        06/02/2025     20:05          86016 wslconfig.exe
-a----        25/09/2025     13:34          65536 WSManHTTPConfig.exe
-a----        29/10/2025      9:56          69632 wsmprovhost.exe
-a----        18/11/2025      0:50         122880 wsqmcons.exe
-a----        29/10/2025      9:56         139264 WSReset.exe
-a----        23/10/2025     11:00         156032 wuauclt.exe
-a----        29/10/2025      9:56         232848 WUDFCompanionHost.exe
-a----        29/10/2025      9:56         357784 WUDFHost.exe
-a----        29/10/2025      9:56         241664 wusa.exe
-a----        29/10/2025      9:56         923024 WWAHost.exe
-a----        23/10/2025     11:00          61440 XblGameSaveTask.exe
-a----        01/04/2024      9:22          73728 xcopy.exe
-a----        29/10/2025      9:56        3690496 xpsrchvw.exe
-a----        07/01/2025     23:17          94208 xwizard.exe
```

---

6. Muestra los ficheros de este directorio que tengan extensión `.dll`, ordenados por fecha de creación y mostrando únicamente las propiedades de fecha de creación (`CreationTime`), último acceso (`LastAccessTime`) y nombre (`Name`).

---

Ejecutas:

```shell
Get-ChildItem C:\Windows\System32 | Where-Object Extension -eq ".dll" | Sort-Object CreationTime | Select-Object CreationTime, LastAccessTime, Name 
```

Y veras algo asi:

```shell
PS C:\Users\HP> Get-ChildItem C:\Windows\System32 | Where-Object Extension -eq ".dll" | Sort-Object CreationTime | Select-Object CreationTime, LastAccessTime, Name

CreationTime        LastAccessTime      Name
------------        --------------      ----
01/02/2002 18:02:02 10/12/2025 11:25:35 msvcp100.dll
01/02/2002 18:02:02 10/12/2025 22:00:55 vcruntime140_1.dll
01/02/2002 18:02:02 09/12/2025 8:42:24  msvcr100.dll
01/02/2002 18:02:02 09/12/2025 9:48:09  msvcp140_2.dll
01/02/2002 18:02:02 09/12/2025 9:48:09  msvcp140_1.dll
01/02/2002 18:02:02 10/12/2025 22:00:55 msvcp140.dll
01/02/2002 18:02:02 10/12/2025 21:51:22 vcruntime140.dll
16/09/2009 12:44:42 10/12/2025 11:24:57 hpzipt12.DLL
16/09/2009 12:44:42 18/11/2025 18:52:01 hpzjrd01.dll
16/09/2009 12:44:42 10/11/2025 18:29:19 hpzjfw64.dll
16/09/2009 12:44:42 03/12/2025 8:46:14  hpzjcd01.dll
16/09/2009 12:44:42 10/12/2025 11:26:20 hpzisn12.DLL
16/09/2009 19:44:10 18/11/2025 18:52:01 HpTcpMib.dll
16/09/2009 19:45:00 18/11/2025 18:52:01 HPTcpMon.dll
16/09/2009 19:45:22 18/11/2025 18:52:01 HPTcpMUI.dll
10/09/2012 1:46:56  07/11/2025 3:33:57  hpbuio64.dll
10/09/2012 1:47:02  07/11/2025 3:33:57  hpbuiodm64.dll
10/09/2012 1:47:08  07/11/2025 3:33:57  hpbuiofax64.dll
10/09/2012 1:47:14  07/11/2025 3:33:57  HPUnifiedIODotNET.dll
20/06/2018 12:32:10 08/12/2025 18:35:38 HPScanTSDrvWn8.dll
20/06/2018 12:32:12 08/12/2025 18:35:38 HPWia2DrvRootWn8.dll
24/09/2019 14:21:38 23/10/2025 11:25:26 SqlServerSpatial150.dll
01/04/2024 9:22:04  08/12/2025 18:37:21 XAudio2_8.dll
01/04/2024 9:22:04  08/12/2025 18:35:16 bcdprov.dll
01/04/2024 9:22:04  08/12/2025 18:35:16 bcdsrv.dll
01/04/2024 9:22:04  08/12/2025 18:36:32 microsoft-windows-power-cad-events.dll
01/04/2024 9:22:06  08/12/2025 18:37:08 VhfUm.dll
01/04/2024 9:22:06  08/12/2025 18:37:00 streamci.dll
01/04/2024 9:22:07  08/12/2025 18:37:10 WcnNetsh.dll
01/04/2024 9:22:07  08/12/2025 18:35:41 imagesp1.dll
01/04/2024 9:22:07  08/12/2025 18:35:26 Direct2DDesktop.dll
01/04/2024 9:22:07  08/12/2025 18:37:17 wlanutil.dll
01/04/2024 9:22:07  08/12/2025 18:35:28 dot3cfg.dll
01/04/2024 9:22:07  10/12/2025 11:24:53 Windows.Networking.ServiceDiscovery.Dnssd.dll
01/04/2024 9:22:07  10/12/2025 14:19:32 Windows.Shell.StartLayoutPopulationEvents.dll
01/04/2024 9:22:07  10/12/2025 21:51:25 TaskSchdPS.dll
01/04/2024 9:22:07  10/12/2025 11:26:10 shellstyle.dll
01/04/2024 9:22:07  02/12/2025 12:40:19 utildll.dll
01/04/2024 9:22:07  10/12/2025 11:25:06 wksprtPS.dll
01/04/2024 9:22:08  10/12/2025 21:50:54 gamestreamingext.dll
01/04/2024 9:22:08  10/12/2025 13:45:46 Microsoft-Windows-AppModelExecEvents.dll
01/04/2024 9:22:08  10/12/2025 21:50:54 execmodelproxy.dll
01/04/2024 9:22:08  08/12/2025 18:37:20 WpPortingLibrary.dll
01/04/2024 9:22:08  10/12/2025 21:50:59 atlthunk.dll
01/04/2024 9:22:08  08/12/2025 18:35:27 dmvdsitf.dll
01/04/2024 9:22:08  10/12/2025 13:43:20 ntdsapi.dll
01/04/2024 9:22:09  08/12/2025 18:37:10 WalletProxy.dll
01/04/2024 9:22:09  08/12/2025 18:37:17 WinSync.dll
01/04/2024 9:22:09  10/12/2025 14:06:24 wlidres.dll
01/04/2024 9:22:09  08/12/2025 18:35:30 ETWCoreUIComponentsResources.dll
01/04/2024 9:22:09  08/12/2025 18:36:50 OskSupport.dll
01/04/2024 9:22:09  08/12/2025 18:35:30 ETWESEProviderResources.dll
01/04/2024 9:22:09  08/12/2025 18:35:39 IA2ComProxy.dll
01/04/2024 9:22:10  10/12/2025 14:19:22 chartv.dll
01/04/2024 9:22:10  08/12/2025 18:37:06 UefiCsp.dll
01/04/2024 9:22:10  10/12/2025 13:08:14 aeevts.dll
01/04/2024 9:22:10  04/12/2025 11:24:22 vss_ps.dll
01/04/2024 9:22:10  10/12/2025 10:41:28 FamilySafetyExt.dll
01/04/2024 9:22:10  10/12/2025 21:50:59 mmres.dll
01/04/2024 9:22:10  08/12/2025 18:37:06 txfw32.dll
01/04/2024 9:22:10  08/12/2025 18:36:32 microsoft-windows-storage-tiering-events.dll
01/04/2024 9:22:10  10/12/2025 11:24:39 psapi.dll
01/04/2024 9:22:10  08/12/2025 18:36:34 MinstoreEvents.dll
01/04/2024 9:22:10  08/12/2025 18:35:16 bootstr.dll
01/04/2024 9:22:10  10/12/2025 21:50:11 pots.dll
01/04/2024 9:22:10  10/12/2025 21:51:07 WofUtil.dll
01/04/2024 9:22:10  08/12/2025 18:35:21 comcat.dll
01/04/2024 9:22:10  08/12/2025 18:36:57 RpcNs4.dll
01/04/2024 9:22:10  10/12/2025 21:50:12 threadpoolwinrt.dll
01/04/2024 9:22:11  08/12/2025 18:36:37 msdtcVSp1res.dll
01/04/2024 9:22:11  08/12/2025 18:36:45 mtxex.dll
01/04/2024 9:22:11  08/12/2025 18:36:57 rpchttp.dll
01/04/2024 9:22:11  10/12/2025 21:50:11 Microsoft.Internal.WarpPal.dll
01/04/2024 9:22:11  10/12/2025 21:50:10 cabinet.dll
01/04/2024 9:22:11  08/12/2025 18:36:58 SensorPerformanceEvents.dll
01/04/2024 9:22:11  08/12/2025 18:35:31 f3ahvoas.dll
01/04/2024 9:22:11  08/12/2025 18:36:42 msvcp60.dll
01/04/2024 9:22:11  02/12/2025 12:40:31 SensorsCpl.dll
01/04/2024 9:22:11  08/12/2025 18:36:58 setbcdlocale.dll
01/04/2024 9:22:11  08/12/2025 18:36:50 osuninst.dll
01/04/2024 9:22:11  10/12/2025 21:57:13 sfc.dll
01/04/2024 9:22:11  08/12/2025 18:30:44 sscoreext.dll
01/04/2024 9:22:11  10/12/2025 21:51:06 mi.dll
01/04/2024 9:22:11  08/12/2025 18:36:31 mibincodec.dll
01/04/2024 9:22:11  10/12/2025 21:51:07 wmidcom.dll
01/04/2024 9:22:11  08/12/2025 18:36:38 msidle.dll
01/04/2024 9:22:11  08/12/2025 18:36:38 msidntld.dll
01/04/2024 9:22:11  08/12/2025 18:35:20 cmdial32.dll
01/04/2024 9:22:11  20/11/2025 8:52:09  sstpcfg.dll
01/04/2024 9:22:11  10/12/2025 11:24:21 dmcommandlineutils.dll
01/04/2024 9:22:11  08/12/2025 18:35:42 IpNatHlpClient.dll
01/04/2024 9:22:11  08/12/2025 18:36:55 rasmbmgr.dll
01/04/2024 9:22:11  08/12/2025 18:37:04 TimeDateMUICallback.dll
01/04/2024 9:22:11  08/12/2025 18:36:46 netbios.dll
01/04/2024 9:22:11  08/12/2025 18:35:39 httpprxp.dll
01/04/2024 9:22:11  08/12/2025 18:37:10 vpnikeapi.dll
01/04/2024 9:22:11  10/12/2025 21:50:54 bi.dll
01/04/2024 9:22:11  10/12/2025 21:52:04 usp10.dll
01/04/2024 9:22:11  08/12/2025 18:36:47 netprovisionsp.dll
01/04/2024 9:22:11  10/12/2025 21:50:54 dmiso8601utils.dll
01/04/2024 9:22:11  08/12/2025 18:35:27 dnsext.dll
01/04/2024 9:22:11  08/12/2025 18:37:10 VpnSohDesktop.dll
01/04/2024 9:22:11  10/12/2025 10:41:25 seclogon.dll
01/04/2024 9:22:11  10/12/2025 11:26:11 WINSRPC.DLL
01/04/2024 9:22:11  18/11/2025 18:51:49 normaliz.dll
01/04/2024 9:22:11  08/12/2025 18:36:35 mprext.dll
01/04/2024 9:22:11  10/12/2025 21:52:04 msls31.dll
01/04/2024 9:22:11  10/12/2025 13:26:55 davhlpr.dll
01/04/2024 9:22:11  10/12/2025 21:50:57 cscapi.dll
01/04/2024 9:22:11  10/12/2025 10:41:42 riched32.dll
01/04/2024 9:22:11  08/12/2025 18:36:51 pifmgr.dll
01/04/2024 9:22:11  08/12/2025 18:35:17 browseui.dll
01/04/2024 9:22:11  08/12/2025 18:36:48 ntlanui2.dll
01/04/2024 9:22:11  08/12/2025 18:36:59 shfolder.dll
01/04/2024 9:22:11  10/12/2025 21:50:57 linkinfo.dll
01/04/2024 9:22:11  08/12/2025 18:35:18 capisp.dll
01/04/2024 9:22:11  10/12/2025 13:41:17 traffic.dll
01/04/2024 9:22:11  10/12/2025 21:51:20 wshunix.dll
01/04/2024 9:22:11  08/12/2025 18:35:13 asycfilt.dll
01/04/2024 9:22:11  08/12/2025 18:36:36 mscat32.dll
01/04/2024 9:22:11  10/12/2025 21:50:10 secur32.dll
01/04/2024 9:22:11  10/12/2025 21:51:17 security.dll
01/04/2024 9:22:11  08/12/2025 18:36:41 mssip32.dll
01/04/2024 9:22:11  08/12/2025 18:37:00 softpub.dll
01/04/2024 9:22:11  08/12/2025 18:36:55 pstorec.dll
01/04/2024 9:22:11  08/12/2025 18:37:00 SortWindows61.dll
01/04/2024 9:22:11  08/12/2025 18:37:00 SortWindows63.dll
01/04/2024 9:22:11  08/12/2025 18:37:00 SortWindows64.dll
01/04/2024 9:22:11  08/12/2025 18:37:00 SortWindows6Compat.dll
01/04/2024 9:22:11  08/12/2025 18:37:00 SortWindows62.dll
01/04/2024 9:22:11  08/12/2025 18:37:00 SortServer2003Compat.dll
01/04/2024 9:22:11  08/12/2025 18:35:30 enterpriseetw.dll
01/04/2024 9:22:11  10/12/2025 21:51:06 iri.dll
01/04/2024 9:22:11  08/12/2025 18:36:25 lz32.dll
01/04/2024 9:22:12  03/12/2025 11:59:41 shpafact.dll
01/04/2024 9:22:12  09/12/2025 8:56:38  osbaseln.dll
01/04/2024 9:22:12  27/11/2025 12:53:28 hbaapi.dll
01/04/2024 9:22:12  10/12/2025 21:50:11 sxs.dll
01/04/2024 9:22:12  08/12/2025 18:37:00 spmpm.dll
01/04/2024 9:22:12  10/12/2025 13:52:32 ktmw32.dll
01/04/2024 9:22:12  08/12/2025 18:37:00 spnet.dll
01/04/2024 9:22:12  08/12/2025 18:36:58 SensApi.dll
01/04/2024 9:22:12  04/12/2025 11:25:28 sysclass.dll
01/04/2024 9:22:12  08/12/2025 18:37:01 syssetup.dll
01/04/2024 9:22:12  10/12/2025 11:23:54 hal.dll
01/04/2024 9:22:12  10/12/2025 21:55:52 DeviceDisplayStatusManager.dll
01/04/2024 9:22:12  10/12/2025 21:50:12 DDORes.dll
01/04/2024 9:22:12  08/12/2025 18:35:23 DDOIProxy.dll
01/04/2024 9:22:12  09/12/2025 23:34:11 DefaultPrinterProvider.dll
01/04/2024 9:22:12  10/12/2025 21:50:12 NcaApi.dll
01/04/2024 9:22:12  08/12/2025 18:37:10 whealogr.dll
01/04/2024 9:22:12  10/12/2025 11:25:05 migisol.dll
01/04/2024 9:22:12  08/12/2025 18:35:29 easconsent.dll
01/04/2024 9:22:12  08/12/2025 18:36:50 onexui.dll
01/04/2024 9:22:12  08/12/2025 18:36:57 sdhcinst.dll
01/04/2024 9:22:13  10/12/2025 10:41:25 fdPHost.dll
01/04/2024 9:22:13  10/12/2025 21:50:58 fontgroupsoverride.dll
01/04/2024 9:22:13  10/12/2025 10:41:25 FDResPub.dll
01/04/2024 9:22:13  08/12/2025 18:35:32 fdProxy.dll
01/04/2024 9:22:13  08/12/2025 18:37:15 Windows.Management.Workplace.WorkplaceSettings.dll
01/04/2024 9:22:13  08/12/2025 18:36:59 shgina.dll
01/04/2024 9:22:14  10/12/2025 21:50:57 IconCodecService.dll
01/04/2024 9:22:14  08/12/2025 18:37:20 ws2help.dll
01/04/2024 9:22:14  10/12/2025 21:51:33 wsock32.dll
01/04/2024 9:22:14  08/12/2025 18:36:36 msafd.dll
01/04/2024 9:22:14  10/12/2025 21:51:06 WSClient.dll
01/04/2024 9:22:15  10/12/2025 21:50:30 pcwum.dll
01/04/2024 9:22:15  08/12/2025 18:36:19 kd.dll
01/04/2024 9:22:15  08/12/2025 18:36:28 mcupdate_AuthenticAMD.dll
01/04/2024 9:22:15  08/12/2025 18:36:28 mcupdate_GenuineIntel.dll
01/04/2024 9:22:15  10/12/2025 12:51:28 wmi.dll
01/04/2024 9:22:15  09/12/2025 23:34:10 WSHTCPIP.DLL
01/04/2024 9:22:15  08/12/2025 18:35:23 dbgeng.dll
01/04/2024 9:22:15  04/12/2025 11:24:04 KdsCli.dll
01/04/2024 9:22:15  10/12/2025 21:50:10 dpapi.dll
01/04/2024 9:22:15  10/12/2025 21:51:32 dsparse.dll
01/04/2024 9:22:15  18/11/2025 18:51:58 dabapi.dll
01/04/2024 9:22:15  18/11/2025 18:51:58 msprivs.dll
01/04/2024 9:22:16  08/12/2025 18:35:35 getuname.dll
01/04/2024 9:22:16  08/12/2025 18:36:35 moricons.dll
01/04/2024 9:22:16  03/12/2025 8:46:15  icmp.dll
01/04/2024 9:22:16  08/12/2025 18:35:07 acledit.dll
01/04/2024 9:22:16  08/12/2025 18:35:23 DDACLSys.dll
01/04/2024 9:22:16  10/12/2025 11:24:10 WinSyncMetastore.dll
01/04/2024 9:22:16  08/12/2025 18:39:06 acproxy.dll
01/04/2024 9:22:16  08/12/2025 18:37:21 XInput9_1_0.dll
01/04/2024 9:22:16  08/12/2025 18:36:55 qasf.dll
01/04/2024 9:22:16  08/12/2025 18:36:56 RemoveDeviceElevated.dll
01/04/2024 9:22:16  08/12/2025 18:35:25 DeviceUxRes.dll
01/04/2024 9:22:16  08/12/2025 18:35:35 gameux.dll
01/04/2024 9:22:16  08/12/2025 18:36:52 PNPXAssocPrx.dll
01/04/2024 9:22:16  08/12/2025 18:37:00 spwinsat.dll
01/04/2024 9:22:16  10/12/2025 21:51:17 pwrshsip.dll
01/04/2024 9:22:16  08/12/2025 18:36:32 microsoft-windows-hal-events.dll
01/04/2024 9:22:16  10/12/2025 14:19:26 microsoft-windows-pdc.dll
01/04/2024 9:22:16  08/12/2025 18:35:27 DocumentPerformanceEvents.dll
01/04/2024 9:22:16  08/12/2025 18:37:15 Windows.Help.Runtime.dll
01/04/2024 9:22:16  10/12/2025 21:50:28 microsoft-windows-kernel-cc-events.dll
01/04/2024 9:22:16  08/12/2025 18:36:36 msdadiag.dll
01/04/2024 9:22:16  08/12/2025 18:36:48 odbccr32.dll
01/04/2024 9:22:16  08/12/2025 18:36:48 odbccu32.dll
01/04/2024 9:22:16  30/10/2025 11:25:28 microsoft-windows-processor-aggregator-events.dll
01/04/2024 9:22:16  05/12/2025 12:59:11 fthsvc.dll
01/04/2024 9:22:16  10/12/2025 13:45:18 pnpts.dll
01/04/2024 9:22:16  08/12/2025 18:37:19 wmiprop.dll
01/04/2024 9:22:17  08/12/2025 18:36:48 odbctrac.dll
01/04/2024 9:22:17  08/12/2025 18:35:23 dbnmpntw.dll
01/04/2024 9:22:17  08/12/2025 18:36:46 nddeapi.dll
01/04/2024 9:22:17  10/12/2025 21:51:25 drprov.dll
01/04/2024 9:22:17  30/10/2025 11:25:39 ThreatAssessment.dll
01/04/2024 9:22:17  10/12/2025 11:26:20 RdpSaPs.dll
01/04/2024 9:22:17  08/12/2025 18:36:56 rnr20.dll
01/04/2024 9:22:17  08/12/2025 18:37:18 wmdrmsdk.dll
01/04/2024 9:22:17  08/12/2025 18:36:38 msiwer.dll
01/04/2024 9:22:17  08/12/2025 18:36:55 rdpcfgex.dll
01/04/2024 9:22:17  08/12/2025 18:36:57 sberes.dll
01/04/2024 9:22:17  08/12/2025 18:37:06 url.dll
01/04/2024 9:22:17  08/12/2025 18:35:30 elshyph.dll
01/04/2024 9:22:17  10/12/2025 11:24:08 pstask.dll
01/04/2024 9:22:17  08/12/2025 18:35:34 fmapi.dll
01/04/2024 9:22:17  08/12/2025 18:36:55 qedwipes.dll
01/04/2024 9:22:17  08/12/2025 18:35:41 ifsutilx.dll
01/04/2024 9:22:17  10/12/2025 13:43:16 wshhyperv.dll
01/04/2024 9:22:17  08/12/2025 18:35:41 IEProxyDesktop.dll
01/04/2024 9:22:17  08/12/2025 18:36:36 mscorier.dll
01/04/2024 9:22:17  10/12/2025 21:51:25 davclnt.dll
01/04/2024 9:22:17  08/12/2025 18:36:36 mscories.dll
01/04/2024 9:22:17  08/12/2025 18:37:00 SrEvents.dll
01/04/2024 9:22:18  08/12/2025 18:35:20 clrhost.dll
01/04/2024 9:22:19  30/10/2025 11:25:43 Windows.Media.Streaming.ps.dll
01/04/2024 9:22:19  10/12/2025 13:41:18 CoreMmRes.dll
01/04/2024 9:22:19  30/10/2025 11:25:20 HostGuardianServiceClientResources.dll
01/04/2024 9:22:19  30/10/2025 11:25:14 AppvClientEventLog.dll
01/04/2024 9:22:19  27/11/2025 12:54:52 UtilityVmSysprep.dll
01/04/2024 9:22:19  10/12/2025 11:25:06 WindowsIoTCsp.dll
01/04/2024 9:22:19  19/11/2025 10:14:25 srmlib.dll
01/04/2024 9:22:19  08/12/2025 18:37:00 srm.dll
01/04/2024 9:22:19  08/12/2025 18:36:23 KeyboardFilterCore.dll
01/04/2024 9:22:19  30/10/2025 11:25:14 assignedaccessproviderevents.dll
01/04/2024 9:22:22  30/10/2025 11:25:40 UIRibbon.dll
01/04/2024 9:22:27  08/12/2025 18:35:16 BlbEvents.dll
01/04/2024 9:22:28  10/12/2025 11:24:35 msvcp120_clr0400.dll
01/04/2024 9:22:28  08/12/2025 18:36:43 msvcr120_clr0400.dll
01/04/2024 9:22:29  10/12/2025 10:41:25 PhoneServiceRes.dll
01/04/2024 9:22:30  08/12/2025 18:36:28 mciseq.dll
01/04/2024 9:22:31  10/12/2025 13:43:29 Microsoft.Management.Infrastructure.Native.Unmanaged.dll
01/04/2024 9:22:31  08/12/2025 18:35:16 blb_ps.dll
01/04/2024 9:22:32  10/12/2025 21:57:14 amsiproxy.dll
01/04/2024 9:22:33  10/12/2025 21:50:59 PhoneutilRes.dll
01/04/2024 9:22:33  08/12/2025 18:37:10 w32topl.dll
01/04/2024 9:22:33  08/12/2025 18:37:05 tpmcompc.dll
01/04/2024 9:22:33  08/12/2025 18:35:31 fdBthProxy.dll
01/04/2024 9:22:33  10/12/2025 21:51:14 sfc_os.dll
01/04/2024 9:22:33  08/12/2025 18:36:48 nrpsrv.dll
01/04/2024 9:22:33  10/12/2025 11:24:23 cmlua.dll
01/04/2024 9:22:33  08/12/2025 18:35:08 adhapi.dll
01/04/2024 9:22:33  08/12/2025 18:35:22 cscdll.dll
01/04/2024 9:22:33  08/12/2025 18:37:00 sppcommdlg.dll
01/04/2024 9:22:34  10/12/2025 10:41:25 polstore.dll
01/04/2024 9:22:34  03/12/2025 12:07:28 AuthFWWizFwk.dll
01/04/2024 9:22:34  08/12/2025 18:37:20 wship6.dll
01/04/2024 9:22:34  08/12/2025 18:35:23 DbgModel.dll
01/04/2024 9:22:34  08/12/2025 18:35:21 cnvfat.dll
01/04/2024 9:22:34  10/12/2025 11:26:12 SyncInfrastructureps.dll
01/04/2024 9:22:34  08/12/2025 18:37:10 wecapi.dll
01/04/2024 9:22:34  10/12/2025 11:24:14 defragproxy.dll
01/04/2024 9:22:35  08/12/2025 18:37:16 Windows.Networking.XboxLive.ProxyStub.dll
01/04/2024 9:22:35  08/12/2025 18:37:06 umdmxfrm.dll
01/04/2024 9:22:35  08/12/2025 18:35:13 asferror.dll
01/04/2024 9:22:35  30/10/2025 11:25:14 appvetwsharedperformance.dll
01/04/2024 9:22:36  08/12/2025 18:37:06 UIRibbonRes.dll
01/04/2024 9:22:39  30/10/2025 11:25:15 BdeHdCfgLib.dll
01/04/2024 9:22:39  08/12/2025 18:35:16 blbres.dll
01/04/2024 9:22:39  08/12/2025 18:35:18 catsrvps.dll
01/04/2024 9:22:39  08/12/2025 18:35:21 cmstplua.dll
01/04/2024 9:22:39  08/12/2025 18:37:17 winipsec.dll
01/04/2024 9:22:40  08/12/2025 18:35:24 delegatorprovider.dll
01/04/2024 9:22:40  08/12/2025 18:35:24 defragres.dll
01/04/2024 9:22:40  08/12/2025 18:37:17 WinSyncProviders.dll
01/04/2024 9:22:40  08/12/2025 18:36:24 LAPRXY.DLL
01/04/2024 9:22:40  08/12/2025 18:35:24 ddp_ps.dll
01/04/2024 9:22:42  08/12/2025 18:37:10 WcnEapAuthProxy.dll
01/04/2024 9:22:42  10/12/2025 10:41:25 lltdres.dll
01/04/2024 9:22:42  08/12/2025 18:36:47 networkitemfactory.dll
01/04/2024 9:22:42  08/12/2025 18:36:50 PerceptionSimulation.ProxyStubs.dll
01/04/2024 9:22:42  08/12/2025 18:37:00 srm_ps.dll
01/04/2024 9:22:45  08/12/2025 18:37:06 ureg.dll
01/04/2024 9:22:45  08/12/2025 18:35:21 cmpbk32.dll
01/04/2024 9:22:49  10/12/2025 13:42:09 winshfhc.dll
01/04/2024 9:22:51  08/12/2025 18:36:34 Microsoft.Windows.Storage.Core.dll
01/04/2024 9:22:51  08/12/2025 18:36:34 Microsoft.Windows.Storage.StorageBusCache.dll
01/04/2024 9:22:51  08/12/2025 18:35:23 C_ISCII.DLL
01/04/2024 9:26:14  15/10/2025 13:51:41 msclmd.dll
01/04/2024 9:26:14  13/08/2025 22:44:49 opencl.dll
01/04/2024 18:29:00 10/12/2025 21:50:59 NlsLexicons000a.dll
01/04/2024 18:29:01 08/12/2025 18:35:30 EasPolicyManagerBrokerPS.dll
01/04/2024 18:29:02 10/12/2025 10:41:26 APHostRes.dll
01/04/2024 18:30:11 13/01/2025 9:39:42  OEMDefaultAssociations.dll
14/09/2024 19:42:05 10/12/2025 10:35:52 sedplugins.dll
14/09/2024 19:42:05 13/01/2025 9:39:44  QualityUpdateAssistant.dll
07/01/2025 23:17:42 08/12/2025 18:36:31 mfvfw.dll
07/01/2025 23:17:42 08/12/2025 18:36:20 kdhvcom.dll
07/01/2025 23:17:42 08/12/2025 18:36:47 NlsData0000.dll
07/01/2025 23:17:42 10/12/2025 0:28:28  HvSocket.dll
07/01/2025 23:17:42 08/12/2025 18:35:20 cmcleanup.dll
07/01/2025 23:17:42 10/12/2025 10:41:26 xboxgipsvc.dll
07/01/2025 23:17:42 08/12/2025 18:37:21 XblGameSaveExt.dll
07/01/2025 23:17:42 08/12/2025 18:37:03 TetheringIeProvider.dll
07/01/2025 23:17:42 10/12/2025 22:00:10 midimap.dll
07/01/2025 23:17:42 08/12/2025 18:35:22 coreaudiopolicymanagerext.dll
07/01/2025 23:17:42 10/12/2025 14:06:12 msdmo.dll
07/01/2025 23:17:42 08/12/2025 18:36:23 ksuser.dll
07/01/2025 23:17:42 10/12/2025 21:50:59 wmiclnt.dll
07/01/2025 23:17:42 08/12/2025 18:35:15 autopilotdiag.dll
07/01/2025 23:17:42 10/12/2025 10:41:25 ApxSvc.dll
07/01/2025 23:17:42 08/12/2025 18:37:06 uiomapapi.dll
07/01/2025 23:17:42 10/12/2025 0:28:47  MediaFoundationAggregator.dll
07/01/2025 23:17:42 08/12/2025 18:36:35 MpeHttpExt.dll
07/01/2025 23:17:42 08/12/2025 18:35:23 DdcClaimsApi.dll
07/01/2025 23:17:42 08/12/2025 18:37:19 WpcProxyStubs.dll
07/01/2025 23:17:42 10/12/2025 21:51:40 ConnectionAttributionApi.dll
07/01/2025 23:17:43 08/12/2025 18:36:37 msdrm.dll
07/01/2025 23:17:43 08/12/2025 18:36:53 provpackageapidll.dll
07/01/2025 23:17:43 08/12/2025 18:37:15 windows.internal.shellcommon.TokenBrokerModal.dll
07/01/2025 23:17:43 08/12/2025 18:35:19 CHxReadingStringIME.dll
07/01/2025 23:17:43 08/12/2025 18:37:06 tzsyncres.dll
07/01/2025 23:17:43 10/12/2025 13:43:18 regapi.dll
07/01/2025 23:17:43 10/12/2025 11:25:19 fde.dll
07/01/2025 23:17:43 10/12/2025 14:16:57 msimtf.dll
07/01/2025 23:17:43 08/12/2025 18:35:35 gamingtcui.dll
07/01/2025 23:17:43 18/11/2025 19:03:08 FontProvider.dll
07/01/2025 23:17:44 08/12/2025 18:35:41 icm32.dll
07/01/2025 23:17:44 10/12/2025 0:04:15  AppxStreamingDataSourcePS.dll
07/01/2025 23:17:44 10/12/2025 21:50:57 Windows.Internal.Graphics.Display.DisplayEnhancementManagement.dll
07/01/2025 23:17:44 10/12/2025 21:50:54 notificationplatformcomponent.dll
07/01/2025 23:17:44 08/12/2025 18:36:27 mbussdapi.dll
07/01/2025 23:17:44 08/12/2025 18:36:50 PaymentMediatorServiceProxy.dll
07/01/2025 23:17:44 08/12/2025 18:37:00 socialapis.dll
07/01/2025 23:17:45 10/12/2025 14:06:08 BrokerLib.dll
07/01/2025 23:17:45 10/12/2025 21:50:55 EventAggregation.dll
07/01/2025 23:17:45 08/12/2025 18:36:35 mrt_map.dll
07/01/2025 23:17:45 10/12/2025 21:50:59 mrt100.dll
07/01/2025 23:17:45 10/12/2025 21:51:00 Windows.ApplicationModel.Background.TimeBroker.dll
07/01/2025 23:17:45 18/11/2025 10:59:29 browcli.dll
07/01/2025 23:17:45 08/12/2025 18:37:04 TimeSyncTask.dll
07/01/2025 23:17:45 08/12/2025 18:36:50 panmap.dll
07/01/2025 23:17:45 08/12/2025 18:36:23 l2gpstore.dll
07/01/2025 23:17:45 08/12/2025 18:35:28 dot3ui.dll
07/01/2025 23:17:45 08/12/2025 18:36:23 l2nacp.dll
07/01/2025 23:17:45 10/12/2025 21:50:58 Windows.Globalization.Fontgroups.dll
07/01/2025 23:17:45 08/12/2025 18:36:36 MSAProfileNotificationHandler.dll
07/01/2025 23:17:45 10/12/2025 21:50:54 PackageStateChangeHandler.dll
07/01/2025 23:17:45 08/12/2025 18:36:53 ProximityCommonPal.dll
07/01/2025 23:17:45 08/12/2025 18:36:54 ProximityRtapiPal.dll
07/01/2025 23:17:45 08/12/2025 18:37:15 Windows.Devices.Haptics.dll
07/01/2025 23:17:45 08/12/2025 18:35:08 AdaptiveCards.dll
07/01/2025 23:17:45 08/12/2025 18:36:53 ProximityCommon.dll
07/01/2025 23:17:45 10/12/2025 0:29:00  SebBackgroundManagerPolicy.dll
07/01/2025 23:17:45 08/12/2025 18:35:22 crypttpmeksvc.dll
07/01/2025 23:17:45 08/12/2025 18:37:21 xboxgipsynthetic.dll
07/01/2025 23:17:45 10/12/2025 21:50:11 ResourcePolicyClient.dll
07/01/2025 23:17:45 10/12/2025 0:28:30  ResourcePolicyServer.dll
07/01/2025 23:17:45 10/12/2025 21:50:55 ActivationClient.dll
07/01/2025 23:17:45 10/12/2025 0:28:52  Windows.Perception.Stub.dll
07/01/2025 23:17:46 10/12/2025 10:41:26 Windows.ApplicationModel.Store.Preview.DOSettings.dll
07/01/2025 23:17:46 10/12/2025 21:52:12 Windows.UI.Xaml.Resources.19h1.dll
07/01/2025 23:17:46 08/12/2025 18:37:16 Windows.UI.Xaml.Resources.rs1.dll
07/01/2025 23:17:46 08/12/2025 18:37:16 Windows.UI.Xaml.Resources.rs4.dll
07/01/2025 23:17:46 08/12/2025 18:37:16 Windows.UI.Xaml.Resources.th.dll
07/01/2025 23:17:46 08/12/2025 18:35:18 CameraCaptureUI.dll
07/01/2025 23:17:46 08/12/2025 18:37:16 Windows.UI.Xaml.Resources.rs5.dll
07/01/2025 23:17:46 08/12/2025 18:37:16 Windows.UI.Xaml.Resources.rs2.dll
07/01/2025 23:17:46 08/12/2025 18:37:16 Windows.UI.Xaml.Resources.rs3.dll
07/01/2025 23:17:46 08/12/2025 18:37:20 wpninprc.dll
07/01/2025 23:17:46 10/12/2025 21:50:11 Windows.UI.Xaml.Resources.21h1.dll
07/01/2025 23:17:46 08/12/2025 18:37:16 Windows.UI.Xaml.Resources.win81.dll
07/01/2025 23:17:46 08/12/2025 18:37:16 Windows.UI.Xaml.Resources.win8rtm.dll
07/01/2025 23:17:46 08/12/2025 18:35:30 ErrorDetails.dll
07/01/2025 23:17:46 08/12/2025 18:35:26 DiagnosticInvoker.dll
07/01/2025 23:17:46 08/12/2025 18:37:01 SystemSupportInfo.dll
07/01/2025 23:17:46 10/12/2025 21:50:59 Windows.System.Diagnostics.Telemetry.PlatformTelemetryClient.dll
07/01/2025 23:17:46 10/12/2025 21:56:23 Windows.Storage.Compression.dll
07/01/2025 23:17:46 08/12/2025 18:37:16 Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticActions.dll
07/01/2025 23:17:46 08/12/2025 18:37:16 Windows.System.UserDeviceAssociation.dll
07/01/2025 23:17:46 10/12/2025 21:50:57 Windows.Security.Integrity.dll
07/01/2025 23:17:46 08/12/2025 18:37:17 winml.dll
07/01/2025 23:17:46 10/12/2025 13:41:17 winusb.dll
07/01/2025 23:17:46 10/12/2025 21:50:58 Clipc.dll
07/01/2025 23:17:46 10/12/2025 21:50:58 popkeycli.dll
07/01/2025 23:17:46 08/12/2025 18:37:15 Windows.AI.MachineLearning.Preview.dll
07/01/2025 23:17:46 08/12/2025 18:37:16 Windows.Web.Diagnostics.dll
07/01/2025 23:17:46 08/12/2025 18:36:52 PrinterAssociationCommon.dll
07/01/2025 23:17:46 10/12/2025 21:50:59 WinRtTracing.dll
07/01/2025 23:17:46 08/12/2025 18:35:22 containerdevicemanagement.dll
07/01/2025 23:17:47 08/12/2025 18:36:34 MiracastInputMgr.dll
07/01/2025 23:17:47 18/11/2025 14:24:35 uexfat.dll
07/01/2025 23:17:47 18/11/2025 18:52:02 untfs.dll
07/01/2025 23:17:47 18/11/2025 14:24:35 ufat.dll
07/01/2025 23:17:47 10/12/2025 0:28:55  BackgroundMediaPolicy.dll
07/01/2025 23:17:47 08/12/2025 18:37:06 UsbCApi.dll
07/01/2025 23:17:47 08/12/2025 18:37:15 Windows.Internal.AdaptiveCards.XamlCardRenderer.dll
07/01/2025 23:17:47 08/12/2025 18:36:24 licenseprotection.dll
07/01/2025 23:17:47 08/12/2025 18:37:15 windows.internal.shellcommon.FilePickerExperienceMEM.dll
07/01/2025 23:17:47 08/12/2025 18:37:15 Windows.Cortana.ProxyStub.dll
07/01/2025 23:17:47 10/12/2025 13:41:17 Magnification.dll
07/01/2025 23:17:47 09/12/2025 23:33:35 adsldpc.dll
07/01/2025 23:17:47 08/12/2025 18:35:21 CompatAggregator.dll
07/01/2025 23:17:47 10/12/2025 21:50:11 DAMediaManager.dll
07/01/2025 23:17:48 08/12/2025 18:37:09 VoiceActivationManager.dll
07/01/2025 23:17:48 08/12/2025 18:35:10 AppInstallerPrompt.Desktop.dll
07/01/2025 23:17:48 08/12/2025 18:35:24 DesktopShellAppStateContract.dll
07/01/2025 23:17:48 08/12/2025 18:36:48 oledlg.dll
07/01/2025 23:17:48 08/12/2025 18:37:04 timesync.dll
07/01/2025 23:17:48 10/12/2025 21:51:07 wmitomi.dll
07/01/2025 23:17:48 10/12/2025 11:25:55 provthrd.dll
07/01/2025 23:17:48 08/12/2025 18:36:45 mtxdm.dll
07/01/2025 23:17:48 08/12/2025 18:37:00 stclient.dll
07/01/2025 23:17:48 10/12/2025 11:26:28 comuid.dll
07/01/2025 23:17:48 10/12/2025 11:24:30 txflog.dll
07/01/2025 23:17:48 08/12/2025 18:37:16 Windows.UI.NetworkUXController.dll
07/01/2025 23:17:49 24/11/2025 10:15:04 dfscli.dll
07/01/2025 23:17:49 08/12/2025 18:35:29 dwmscene.dll
07/01/2025 23:17:49 10/12/2025 21:50:10 msimg32.dll
07/01/2025 23:17:49 08/12/2025 20:22:24 d3d10_1.dll
07/01/2025 23:17:49 08/12/2025 18:36:56 rgb9rast.dll
07/01/2025 23:17:49 10/12/2025 10:41:25 sensrsvc.dll
07/01/2025 23:17:49 08/12/2025 18:36:34 mimofcodec.dll
07/01/2025 23:17:49 10/12/2025 11:23:50 mspatcha.dll
07/01/2025 23:17:49 10/12/2025 21:50:12 ngclocal.dll
07/01/2025 23:17:49 08/12/2025 18:35:39 htui.dll
07/01/2025 23:17:49 10/12/2025 21:50:10 version.dll
07/01/2025 23:17:50 24/11/2025 10:15:04 DfsShlEx.dll
07/01/2025 23:17:50 08/12/2025 18:36:25 MaintenanceUI.dll
07/01/2025 23:17:50 08/12/2025 18:36:38 msident.dll
07/01/2025 23:17:50 08/12/2025 18:35:37 HanjaDS.dll
07/01/2025 23:17:50 08/12/2025 18:36:59 shimgvw.dll
07/01/2025 23:17:50 08/12/2025 18:37:15 Windows.Internal.ShellCommon.PrintExperience.dll
07/01/2025 23:17:50 08/12/2025 18:36:37 MsftOemDllIgneous.dll
07/01/2025 23:17:50 18/11/2025 18:52:01 wsnmp32.dll
07/01/2025 23:17:50 10/12/2025 10:41:28 slwga.dll
07/01/2025 23:17:50 04/12/2025 11:24:39 Storprop.dll
07/01/2025 23:17:50 10/12/2025 21:50:55 slc.dll
07/01/2025 23:17:50 10/12/2025 14:20:08 sxssrv.dll
07/01/2025 23:17:50 08/12/2025 18:37:00 sxsstore.dll
07/01/2025 23:17:50 10/12/2025 21:55:20 dmprocessxmlfiltered.dll
07/01/2025 23:17:50 08/12/2025 18:35:44 KBDA1.DLL
07/01/2025 23:17:50 08/12/2025 18:35:48 KBDBU.DLL
07/01/2025 23:17:50 18/11/2025 18:51:58 netprovfw.dll
07/01/2025 23:17:50 08/12/2025 18:36:46 ncuprov.dll
07/01/2025 23:17:51 10/12/2025 21:55:54 wdscore.dll
07/01/2025 23:17:51 08/12/2025 18:35:49 KBDCZ.DLL
07/01/2025 23:17:51 08/12/2025 18:35:50 KBDDA.DLL
07/01/2025 23:17:51 10/12/2025 21:50:10 KBDSP.DLL
07/01/2025 23:17:51 08/12/2025 18:35:52 KBDFI.DLL
07/01/2025 23:17:51 08/12/2025 18:35:57 KBDHU.DLL
07/01/2025 23:17:51 08/12/2025 18:35:56 KBDHE.DLL
07/01/2025 23:17:51 08/12/2025 18:35:58 KBDIC.DLL
07/01/2025 23:17:51 08/12/2025 18:36:01 KBDJPN.DLL
07/01/2025 23:17:51 08/12/2025 18:35:57 KBDHEB.DLL
07/01/2025 23:17:51 08/12/2025 18:36:01 KBDIT.DLL
07/01/2025 23:17:51 08/12/2025 18:35:52 KBDFR.DLL
07/01/2025 23:17:51 08/12/2025 18:35:55 KBDGR.DLL
07/01/2025 23:17:51 10/12/2025 21:55:52 FdDevQuery.dll
07/01/2025 23:17:51 10/12/2025 21:50:12 DefaultDeviceManager.dll
07/01/2025 23:17:51 08/12/2025 18:36:02 KBDKOR.DLL
07/01/2025 23:17:51 08/12/2025 18:36:05 KBDNE.DLL
07/01/2025 23:17:51 08/12/2025 18:36:08 KBDPL1.DLL
07/01/2025 23:17:51 08/12/2025 18:36:06 KBDNO.DLL
07/01/2025 23:17:51 08/12/2025 18:36:10 KBDSL.DLL
07/01/2025 23:17:51 08/12/2025 18:36:09 KBDRU.DLL
07/01/2025 23:17:51 08/12/2025 18:35:29 dsprop.dll
07/01/2025 23:17:51 08/12/2025 18:35:45 KBDAL.DLL
07/01/2025 23:17:51 08/12/2025 18:36:08 KBDRO.DLL
07/01/2025 23:17:51 08/12/2025 18:36:12 KBDSW.DLL
07/01/2025 23:17:51 08/12/2025 18:36:13 KBDTH0.DLL
07/01/2025 23:17:51 08/12/2025 18:36:15 KBDTUQ.DLL
07/01/2025 23:17:51 10/12/2025 11:26:20 uudf.dll
07/01/2025 23:17:51 10/12/2025 21:51:15 winrnr.dll
07/01/2025 23:17:51 08/12/2025 18:36:17 KBDURDU.DLL
07/01/2025 23:17:51 08/12/2025 18:35:47 KBDBLR.DLL
07/01/2025 23:17:52 08/12/2025 18:36:16 KBDUR.DLL
07/01/2025 23:17:52 08/12/2025 18:35:51 KBDEST.DLL
07/01/2025 23:17:52 08/12/2025 18:36:56 RefsDedupSvc.Proxy.dll
07/01/2025 23:17:52 08/12/2025 18:37:20 WwaExt.dll
07/01/2025 23:17:52 10/12/2025 21:51:15 NapiNSP.dll
07/01/2025 23:17:52 08/12/2025 18:36:03 KBDLV.DLL
07/01/2025 23:17:52 08/12/2025 18:37:06 usbui.dll
07/01/2025 23:17:52 08/12/2025 18:36:03 KBDLT.DLL
07/01/2025 23:17:52 08/12/2025 18:36:13 KBDTAJIK.DLL
07/01/2025 23:17:52 08/12/2025 18:35:30 edpauditapi.dll
07/01/2025 23:17:52 08/12/2025 18:35:51 KBDFA.DLL
07/01/2025 23:17:52 08/12/2025 18:36:18 KBDVNTC.DLL
07/01/2025 23:17:52 08/12/2025 18:36:12 KBDSORST.DLL
07/01/2025 23:17:52 08/12/2025 18:35:45 KBDARME.DLL
07/01/2025 23:17:52 08/12/2025 18:36:04 KBDMLT47.DLL
07/01/2025 23:17:52 08/12/2025 18:35:59 KBDINDEV.DLL
07/01/2025 23:17:52 08/12/2025 18:35:46 KBDAZEL.DLL
07/01/2025 23:17:52 08/12/2025 18:36:04 KBDMAC.DLL
07/01/2025 23:17:52 08/12/2025 18:35:59 KBDINGUJ.DLL
07/01/2025 23:17:52 08/12/2025 18:35:52 KBDFO.DLL
07/01/2025 23:17:52 08/12/2025 18:36:01 KBDKAZ.DLL
07/01/2025 23:17:52 08/12/2025 18:36:06 KBDNO1.DLL
07/01/2025 23:17:52 08/12/2025 18:36:13 KBDTAT.DLL
07/01/2025 23:17:52 08/12/2025 18:35:59 KBDINKAN.DLL
07/01/2025 23:17:52 08/12/2025 18:35:59 KBDINMAL.DLL
07/01/2025 23:17:52 08/12/2025 18:35:53 KBDGEO.DLL
07/01/2025 23:17:52 08/12/2025 18:36:14 KBDTIPRC.DLL
07/01/2025 23:17:52 08/12/2025 18:36:02 KBDLAO.DLL
07/01/2025 23:17:52 08/12/2025 18:36:00 KBDINTEL.DLL
07/01/2025 23:17:52 08/12/2025 18:36:16 KBDUKX.DLL
07/01/2025 23:17:52 08/12/2025 18:36:15 KBDTURME.DLL
07/01/2025 23:17:52 08/12/2025 18:36:00 KBDINTAM.DLL
07/01/2025 23:17:52 08/12/2025 18:35:59 KBDINMAR.DLL
07/01/2025 23:17:52 08/12/2025 18:36:00 KBDINPUN.DLL
07/01/2025 23:17:52 08/12/2025 18:35:59 KBDINBEN.DLL
07/01/2025 23:17:52 08/12/2025 18:36:04 KBDMON.DLL
07/01/2025 23:17:52 10/12/2025 21:51:36 bitsigd.dll
07/01/2025 23:17:52 08/12/2025 18:35:58 KBDINASA.DLL
07/01/2025 23:17:52 10/12/2025 11:25:38 efsutil.dll
07/01/2025 23:17:52 08/12/2025 18:36:01 KBDKHMR.DLL
07/01/2025 23:17:52 08/12/2025 18:36:12 KBDSYR1.DLL
07/01/2025 23:17:52 08/12/2025 18:36:00 KBDINORI.DLL
07/01/2025 23:17:52 08/12/2025 18:36:02 KBDKYR.DLL
07/01/2025 23:17:52 08/12/2025 18:35:17 btpanui.dll
07/01/2025 23:17:52 04/12/2025 11:24:16 bthci.dll
07/01/2025 23:17:52 08/12/2025 18:36:06 KBDNEPR.DLL
07/01/2025 23:17:52 08/12/2025 18:35:48 KBDCHER.DLL
07/01/2025 23:17:52 08/12/2025 18:35:50 KBDDIV1.DLL
07/01/2025 23:17:52 08/12/2025 18:36:11 KBDSN1.DLL
07/01/2025 23:17:52 08/12/2025 18:35:56 KBDHAU.DLL
07/01/2025 23:17:52 08/12/2025 18:36:07 KBDPASH.DLL
07/01/2025 23:17:52 08/12/2025 18:36:19 KBDYBA.DLL
07/01/2025 23:17:52 08/12/2025 18:36:06 KBDNSO.DLL
07/01/2025 23:17:52 08/12/2025 18:35:46 KBDBASH.DLL
07/01/2025 23:17:52 08/12/2025 18:35:55 KBDGRLND.DLL
07/01/2025 23:17:52 08/12/2025 18:35:55 KBDGN.DLL
07/01/2025 23:17:52 08/12/2025 18:35:58 KBDIBO.DLL
07/01/2025 23:17:52 10/12/2025 14:17:02 t2embed.dll
07/01/2025 23:17:52 08/12/2025 18:36:18 KBDWOL.DLL
07/01/2025 23:17:52 08/12/2025 18:36:16 KBDUGHR.DLL
07/01/2025 23:17:52 08/12/2025 18:36:18 KBDYAK.DLL
07/01/2025 23:17:52 08/12/2025 18:36:02 KBDLA.DLL
07/01/2025 23:17:52 08/12/2025 18:36:16 KBDUK.DLL
07/01/2025 23:17:52 08/12/2025 18:36:02 KBDKURD.DLL
07/01/2025 23:17:52 08/12/2025 18:36:10 KBDSG.DLL
07/01/2025 23:17:52 08/12/2025 18:36:08 KBDPO.DLL
07/01/2025 23:17:52 08/12/2025 18:35:31 Family.Client.dll
07/01/2025 23:17:52 10/12/2025 11:24:15 pnpclean.dll
07/01/2025 23:17:52 10/12/2025 10:35:25 spinf.dll
07/01/2025 23:17:52 08/12/2025 18:36:04 KBDMAORI.DLL
07/01/2025 23:17:52 08/12/2025 18:35:46 KBDAZE.DLL
07/01/2025 23:17:52 08/12/2025 18:19:26 spfileq.dll
07/01/2025 23:17:52 08/12/2025 18:35:31 Family.Authentication.dll
07/01/2025 23:17:52 08/12/2025 18:35:56 KBDHAW.DLL
07/01/2025 23:17:52 08/12/2025 18:36:19 KBDYCL.DLL
07/01/2025 23:17:53 08/12/2025 18:36:18 KBDUZB.DLL
07/01/2025 23:17:53 08/12/2025 18:36:19 KBDYCC.DLL
07/01/2025 23:17:53 08/12/2025 18:36:15 KBDTZM.DLL
07/01/2025 23:17:53 08/12/2025 18:35:52 KBDFC.DLL
07/01/2025 23:17:53 08/12/2025 18:36:05 KBDMONMO.DLL
07/01/2025 23:17:53 08/12/2025 18:36:01 KBDIULAT.DLL
07/01/2025 23:17:53 08/12/2025 18:35:48 KBDCA.DLL
07/01/2025 23:17:53 08/12/2025 18:35:51 KBDDZO.DLL
07/01/2025 23:17:53 08/12/2025 18:36:14 KBDTIFI.DLL
07/01/2025 23:17:53 08/12/2025 18:36:52 posetup.dll
07/01/2025 23:17:53 08/12/2025 18:36:00 KBDIR.DLL
07/01/2025 23:17:53 08/12/2025 18:35:42 IppCommonProxy.dll
07/01/2025 23:17:53 08/12/2025 18:35:47 KBDBHC.DLL
07/01/2025 23:17:53 08/12/2025 18:35:59 KBDINEN.DLL
07/01/2025 23:17:53 08/12/2025 18:35:49 KBDCZ1.DLL
07/01/2025 23:17:53 08/12/2025 18:35:44 KBDA2.DLL
07/01/2025 23:17:53 10/12/2025 0:28:53  profsvcext.dll
07/01/2025 23:17:53 10/12/2025 21:50:55 userinitext.dll
07/01/2025 23:17:53 08/12/2025 18:36:59 shutdownext.dll
07/01/2025 23:17:53 08/12/2025 18:35:51 KBDES.DLL
07/01/2025 23:17:53 08/12/2025 18:35:55 KBDGR1.DLL
07/01/2025 23:17:53 08/12/2025 18:35:53 KBDFRNA.DLL
07/01/2025 23:17:53 08/12/2025 18:35:58 KBDHU1.DLL
07/01/2025 23:17:53 08/12/2025 18:35:50 KBDDV.DLL
07/01/2025 23:17:53 08/12/2025 18:35:56 KBDHE220.DLL
07/01/2025 23:17:53 08/12/2025 18:35:36 gptext.dll
07/01/2025 23:17:53 08/12/2025 18:36:01 KBDIT142.DLL
07/01/2025 23:17:53 08/12/2025 18:36:09 KBDROST.DLL
07/01/2025 23:17:53 08/12/2025 18:36:08 KBDPL.DLL
07/01/2025 23:17:53 09/12/2025 11:06:35 Startupscan.dll
07/01/2025 23:17:53 10/12/2025 21:52:59 hcproviders.dll
07/01/2025 23:17:53 10/12/2025 21:50:59 ConnectedAccountState.dll
07/01/2025 23:17:53 08/12/2025 18:36:09 KBDRU1.DLL
07/01/2025 23:17:53 08/12/2025 18:36:10 KBDSL1.DLL
07/01/2025 23:17:54 08/12/2025 18:36:14 KBDTH1.DLL
07/01/2025 23:17:54 08/12/2025 18:36:15 KBDTUF.DLL
07/01/2025 23:17:54 08/12/2025 18:36:03 KBDLT1.DLL
07/01/2025 23:17:54 08/12/2025 18:36:03 KBDLV1.DLL
07/01/2025 23:17:54 10/12/2025 11:23:53 kdcom.dll
07/01/2025 23:17:54 10/12/2025 11:23:53 PSHED.DLL
07/01/2025 23:17:54 08/12/2025 18:35:46 KBDAZST.DLL
07/01/2025 23:17:54 08/12/2025 18:36:11 KBDSOREX.DLL
07/01/2025 23:17:54 08/12/2025 18:35:45 KBDARMW.DLL
07/01/2025 23:17:54 08/12/2025 18:36:47 NetworkProxyCsp.dll
07/01/2025 23:17:54 08/12/2025 18:35:09 advpack.dll
07/01/2025 23:17:54 08/12/2025 18:35:59 KBDINHIN.DLL
07/01/2025 23:17:54 08/12/2025 18:36:04 KBDMLT48.DLL
07/01/2025 23:17:54 08/12/2025 18:35:58 KBDINBE1.DLL
07/01/2025 23:17:54 10/12/2025 21:50:10 hid.dll
07/01/2025 23:17:54 08/12/2025 18:36:15 KBDTT102.DLL
07/01/2025 23:17:54 08/12/2025 18:36:40 msrating.dll
07/01/2025 23:17:54 08/12/2025 18:36:04 KBDMACST.DLL
07/01/2025 23:17:54 08/12/2025 18:36:11 KBDSMSNO.DLL
07/01/2025 23:17:54 08/12/2025 18:36:46 nci.dll
07/01/2025 23:17:54 08/12/2025 18:35:54 kbdgeoqw.dll
07/01/2025 23:17:54 08/12/2025 18:36:15 KBDTIPRD.DLL
07/01/2025 23:17:54 08/12/2025 18:36:01 KBDKNI.DLL
07/01/2025 23:17:54 10/12/2025 11:24:40 wow64base.dll
07/01/2025 23:17:54 08/12/2025 18:36:12 KBDSW09.DLL
07/01/2025 23:17:54 08/12/2025 18:36:12 KBDSYR2.DLL
07/01/2025 23:17:54 08/12/2025 18:35:49 KBDCHERP.DLL
07/01/2025 23:17:54 08/12/2025 18:35:47 KBDBENE.DLL
07/01/2025 23:17:54 08/12/2025 18:36:05 KBDMYAN.DLL
07/01/2025 23:17:54 08/12/2025 18:35:53 KBDGAE.DLL
07/01/2025 23:17:54 08/12/2025 18:36:05 KBDMONST.DLL
07/01/2025 23:17:54 08/12/2025 18:35:44 KBDA3.DLL
07/01/2025 23:17:54 08/12/2025 18:36:00 KBDINUK2.DLL
07/01/2025 23:17:54 08/12/2025 18:36:14 KBDTIFI2.DLL
07/01/2025 23:17:54 08/12/2025 18:35:48 KBDCAN.DLL
07/01/2025 23:17:54 08/12/2025 18:35:47 KBDBGPH.DLL
07/01/2025 23:17:54 08/12/2025 18:36:16 KBDUGHR1.DLL
07/01/2025 23:17:54 08/12/2025 18:35:50 KBDDIV2.DLL
07/01/2025 23:17:54 08/12/2025 18:35:57 KBDHE319.DLL
07/01/2025 23:17:54 08/12/2025 18:36:18 KBDUSX.DLL
07/01/2025 23:17:54 08/12/2025 18:35:55 KBDGRE1.DLL
07/01/2025 23:17:54 08/12/2025 18:35:53 KBDFRNB.DLL
07/01/2025 23:17:54 08/12/2025 18:36:08 KBDROPR.DLL
07/01/2025 23:17:54 08/12/2025 18:35:50 KBDCZ2.DLL
07/01/2025 23:17:54 08/12/2025 18:36:09 KBDRUM.DLL
07/01/2025 23:17:54 08/12/2025 18:35:57 kbdhebl3.dll
07/01/2025 23:17:54 08/12/2025 18:36:16 KBDUR1.DLL
07/01/2025 23:17:55 08/12/2025 18:36:04 KBDLVST.DLL
07/01/2025 23:17:55 10/12/2025 21:50:28 CorePrivacySettingsStore.dll
07/01/2025 23:17:55 08/12/2025 18:36:14 KBDTH2.DLL
07/01/2025 23:17:55 08/12/2025 18:36:03 KBDLT2.DLL
07/01/2025 23:17:55 08/12/2025 18:35:48 KBDBULG.DLL
07/01/2025 23:17:55 08/12/2025 18:35:57 kbdhebsi.dll
07/01/2025 23:17:55 08/12/2025 18:36:17 KBDUSL.DLL
07/01/2025 23:17:55 08/12/2025 18:35:58 KBDINBE2.DLL
07/01/2025 23:17:55 08/12/2025 18:35:45 kbdarmph.dll
07/01/2025 23:17:55 08/12/2025 18:36:06 KBDNTL.DLL
07/01/2025 23:17:55 08/12/2025 18:35:55 KBDGRE2.DLL
07/01/2025 23:17:55 08/12/2025 18:36:12 KBDSORS1.DLL
07/01/2025 23:17:55 08/12/2025 18:36:13 KBDTAM99.DLL
07/01/2025 23:17:55 08/12/2025 18:35:54 KBDGKL.DLL
07/01/2025 23:17:55 08/12/2025 18:36:06 kbdnko.dll
07/01/2025 23:17:55 08/12/2025 18:35:57 KBDHELA3.DLL
07/01/2025 23:17:55 08/12/2025 18:35:45 kbdarmty.dll
07/01/2025 23:17:55 08/12/2025 18:35:57 KBDHELA2.DLL
07/01/2025 23:17:55 08/12/2025 18:36:07 kbdphags.dll
07/01/2025 23:17:55 08/12/2025 18:36:02 kbdlisus.dll
07/01/2025 23:17:55 08/12/2025 18:36:13 KBDTAILE.DLL
07/01/2025 23:17:55 08/12/2025 18:36:17 KBDUSR.DLL
07/01/2025 23:17:55 08/12/2025 18:36:10 KBDSMSFI.DLL
07/01/2025 23:17:55 08/12/2025 18:36:14 KBDTH3.DLL
07/01/2025 23:17:55 08/12/2025 18:35:57 KBDHEPT.DLL
07/01/2025 23:17:55 08/12/2025 18:36:07 KBDOGHAM.DLL
07/01/2025 23:17:55 08/12/2025 18:36:17 KBDUSA.DLL
07/01/2025 23:17:55 08/12/2025 18:36:02 kbdlisub.dll
07/01/2025 23:17:55 08/12/2025 18:35:54 kbdgeome.dll
07/01/2025 23:17:55 08/12/2025 18:35:49 KBDCMK.DLL
07/01/2025 23:17:55 08/12/2025 18:35:48 KBDBUG.DLL
07/01/2025 23:17:55 08/12/2025 18:35:54 kbdgeooa.dll
07/01/2025 23:17:55 08/12/2025 18:35:52 kbdfar.dll
07/01/2025 23:17:55 08/12/2025 18:36:07 KBDOSM.DLL
07/01/2025 23:17:55 08/12/2025 18:35:56 KBDGTHC.DLL
07/01/2025 23:17:55 08/12/2025 18:35:47 KBDBGPH1.DLL
07/01/2025 23:17:55 08/12/2025 18:36:07 KBDOLDIT.DLL
07/01/2025 23:17:55 08/12/2025 18:36:07 KBDOLCH.DLL
07/01/2025 23:17:55 08/12/2025 18:36:01 KBDJAV.DLL
07/01/2025 23:17:55 08/12/2025 18:36:11 KBDSORA.DLL
07/01/2025 23:17:55 08/12/2025 18:35:44 KBDADLM.DLL
07/01/2025 23:17:55 08/12/2025 18:35:54 kbdgeoer.dll
07/01/2025 23:17:55 08/12/2025 18:36:07 KBDOSA.DLL
07/01/2025 23:17:55 08/12/2025 18:35:44 kbd106.dll
07/01/2025 23:17:55 08/12/2025 18:35:53 KBDFTHRK.DLL
07/01/2025 23:17:55 08/12/2025 18:36:03 kbdlk41a.dll
07/01/2025 23:17:55 08/12/2025 18:35:45 kbdax2.dll
07/01/2025 23:17:55 08/12/2025 18:35:58 kbdibm02.dll
07/01/2025 23:17:55 08/12/2025 18:36:05 kbdnecat.dll
07/01/2025 23:17:55 08/12/2025 18:36:05 kbdnec.dll
07/01/2025 23:17:55 08/12/2025 18:35:49 KBDCR.DLL
07/01/2025 23:17:55 08/12/2025 18:35:46 KBDBE.DLL
07/01/2025 23:17:55 08/12/2025 18:35:43 kbd101a.dll
07/01/2025 23:17:55 08/12/2025 18:35:47 KBDBR.DLL
07/01/2025 23:17:55 08/12/2025 18:35:52 KBDFI1.DLL
07/01/2025 23:17:55 08/12/2025 18:35:43 kbd101.dll
07/01/2025 23:17:55 08/12/2025 18:35:43 kbd103.dll
07/01/2025 23:17:55 08/12/2025 18:35:43 kbd101b.dll
07/01/2025 23:17:55 08/12/2025 18:36:05 kbdnec95.dll
07/01/2025 23:17:55 08/12/2025 18:35:43 kbd101c.dll
07/01/2025 23:17:55 08/12/2025 18:36:10 KBDSF.DLL
07/01/2025 23:17:55 08/12/2025 18:36:06 kbdnecnt.dll
07/01/2025 23:17:55 10/12/2025 21:50:59 ELSCore.dll
07/01/2025 23:17:55 10/12/2025 21:50:12 dsrole.dll
07/01/2025 23:17:55 08/12/2025 18:36:47 Nlsdl.dll
07/01/2025 23:17:55 10/12/2025 21:50:10 ntasn1.dll
07/01/2025 23:17:55 10/12/2025 21:50:09 netutils.dll
07/01/2025 23:17:55 08/12/2025 18:37:04 tokenbinding.dll
07/01/2025 23:17:55 10/12/2025 21:50:15 schedcli.dll
07/01/2025 23:17:55 10/12/2025 21:50:11 srvcli.dll
07/01/2025 23:17:56 10/12/2025 21:50:59 elsTrans.dll
07/01/2025 23:17:56 10/12/2025 21:50:58 msauserext.dll
07/01/2025 23:17:56 08/12/2025 18:36:38 msidcrl40.dll
07/01/2025 23:17:56 08/12/2025 18:36:56 recovery.dll
07/01/2025 23:17:56 10/12/2025 13:43:19 vmdevicehost.dll
07/01/2025 23:17:57 08/12/2025 18:35:41 ifmon.dll
07/01/2025 23:17:57 10/12/2025 11:25:04 DragDropExperienceDataExchangeDelegated.dll
07/01/2025 23:17:57 08/12/2025 18:35:42 inetmib1.dll
07/01/2025 23:17:57 18/11/2025 18:52:01 snmpapi.dll
07/01/2025 23:17:57 08/12/2025 18:36:45 msyuv.dll
07/01/2025 23:17:57 08/12/2025 18:35:30 encapi.dll
07/01/2025 23:17:57 08/12/2025 18:37:08 vfwwdm32.dll
07/01/2025 23:17:57 08/12/2025 18:36:57 scripto.dll
07/01/2025 23:17:57 10/12/2025 13:45:45 microsoft-windows-kernel-pnp-events.dll
07/01/2025 23:17:57 08/12/2025 18:36:46 NcdProp.dll
07/01/2025 23:17:57 10/12/2025 10:41:26 wephostsvc.dll
07/01/2025 23:17:57 08/12/2025 18:35:30 EhStorPwdMgr.dll
07/01/2025 23:17:57 08/12/2025 18:37:10 wevtfwd.dll
07/01/2025 23:17:57 08/12/2025 18:37:17 wininetlui.dll
07/01/2025 23:17:57 08/12/2025 18:35:22 cryptdlg.dll
07/01/2025 23:17:57 08/12/2025 18:35:40 iassam.dll
07/01/2025 23:17:57 08/12/2025 18:37:21 xwtpdui.dll
07/01/2025 23:17:57 08/12/2025 18:36:35 mpunits.dll
07/01/2025 23:17:57 08/12/2025 18:36:55 pwsso.dll
07/01/2025 23:17:57 08/12/2025 18:37:21 xwtpw32.dll
07/01/2025 23:17:57 08/12/2025 18:35:40 iashlpr.dll
07/01/2025 23:17:57 08/12/2025 18:37:07 verifier.dll
07/01/2025 23:17:57 08/12/2025 18:37:21 xwreg.dll
07/01/2025 23:17:57 08/12/2025 18:37:06 umpowmi.dll
07/01/2025 23:17:57 08/12/2025 18:35:38 hnetmon.dll
07/01/2025 23:17:57 10/12/2025 11:02:46 wsp_sr.dll
07/01/2025 23:17:57 08/12/2025 18:35:35 GameChatOverlayExt.dll
07/01/2025 23:17:57 24/11/2025 10:15:04 rshx32.dll
07/01/2025 23:17:57 08/12/2025 18:36:56 RemoteWipeCSP.dll
07/01/2025 23:17:57 18/11/2025 14:26:51 EdgeResetPlugin.dll
07/01/2025 23:17:57 08/12/2025 18:36:55 RacEngn.dll
07/01/2025 23:17:57 08/12/2025 18:36:24 loghours.dll
07/01/2025 23:17:57 08/12/2025 18:35:08 adsmsext.dll
07/01/2025 23:17:57 08/12/2025 18:36:48 odbcbcp.dll
07/01/2025 23:17:57 08/12/2025 18:35:41 imapi.dll
07/01/2025 23:17:58 08/12/2025 18:35:37 HdcpHandler.dll
07/01/2025 23:17:58 08/12/2025 21:12:37 playtomenu.dll
07/01/2025 23:17:58 10/12/2025 21:50:59 dusmapi.dll
07/01/2025 23:17:58 08/12/2025 18:36:48 odbcconf.dll
07/01/2025 23:17:58 08/12/2025 18:36:50 PayloadRestrictions.dll
07/01/2025 23:17:58 10/12/2025 11:24:12 dataclen.dll
07/01/2025 23:17:58 08/12/2025 18:36:20 kdusb.dll
07/01/2025 23:17:58 08/12/2025 18:36:50 packager.dll
07/01/2025 23:17:58 08/12/2025 18:35:24 deskmon.dll
07/01/2025 23:17:58 08/12/2025 18:35:26 DiagCpl.dll
07/01/2025 23:17:58 08/12/2025 18:35:21 cofiredm.dll
07/01/2025 23:17:58 10/12/2025 11:36:31 sxshared.dll
07/01/2025 23:17:58 08/12/2025 18:35:23 dbnetlib.dll
07/01/2025 23:17:58 08/12/2025 18:35:20 cliconfg.dll
07/01/2025 23:17:58 08/12/2025 18:36:38 MsiCofire.dll
07/01/2025 23:17:58 02/12/2025 9:54:58  radardt.dll
07/01/2025 23:17:58 10/12/2025 21:50:56 radarrs.dll
07/01/2025 23:17:58 08/12/2025 18:36:24 licmgr10.dll
07/01/2025 23:17:58 08/12/2025 18:36:38 MshtmlDac.dll
07/01/2025 23:17:58 08/12/2025 18:36:38 mshtmled.dll
07/01/2025 23:17:58 18/11/2025 18:52:59 wtdhost.dll
07/01/2025 23:17:58 08/12/2025 18:35:17 BthMtpContextHandler.dll
07/01/2025 23:17:58 08/12/2025 18:35:43 JavaScriptCollectionAgent.dll
07/01/2025 23:17:58 10/12/2025 11:23:55 sdiagschd.dll
07/01/2025 23:17:58 08/12/2025 18:35:29 Dsui.dll
07/01/2025 23:17:58 10/12/2025 21:51:12 wtdsensor.dll
07/01/2025 23:17:58 08/12/2025 18:36:57 sdiagprv.dll
07/01/2025 23:17:58 08/12/2025 18:35:42 inseng.dll
07/01/2025 23:17:58 08/12/2025 18:37:15 Windows.Internal.SecurityMitigationsBroker.dll
07/01/2025 23:17:58 08/12/2025 18:35:30 edgeangle.dll
07/01/2025 23:17:58 10/12/2025 13:43:19 lxutil.dll
07/01/2025 23:17:58 08/12/2025 18:36:40 MsRdpWebAccess.dll
07/01/2025 23:17:58 08/12/2025 18:35:41 IEAdvpack.dll
07/01/2025 23:17:58 08/12/2025 18:36:56 RDSAppXHelper.dll
07/01/2025 23:17:58 08/12/2025 18:37:06 tvratings.dll
07/01/2025 23:17:58 10/12/2025 21:50:55 pautoenr.dll
07/01/2025 23:17:58 08/12/2025 18:35:26 dhcpsapi.dll
07/01/2025 23:17:58 08/12/2025 18:35:25 dfdts.dll
07/01/2025 23:17:58 08/12/2025 18:35:26 dinput.dll
07/01/2025 23:17:58 03/12/2025 11:59:41 Display.dll
07/01/2025 23:17:58 08/12/2025 18:35:42 InputController.dll
07/01/2025 23:17:58 08/12/2025 18:35:41 iesysprep.dll
07/01/2025 23:17:59 10/12/2025 10:41:26 p9rdrservice.dll
07/01/2025 23:17:59 02/12/2025 12:40:31 msports.dll
07/01/2025 23:17:59 08/12/2025 18:37:06 unimdmat.dll
07/01/2025 23:17:59 10/12/2025 12:51:28 spp.dll
07/01/2025 23:17:59 30/10/2025 11:25:41 vmrdvcore.dll
07/01/2025 23:17:59 08/12/2025 18:35:32 fhengine.dll
07/01/2025 23:17:59 10/12/2025 10:41:25 svsvc.dll
07/01/2025 23:17:59 08/12/2025 18:35:08 AcWinRT.dll
07/01/2025 23:17:59 08/12/2025 18:35:08 AcXtrnal.dll
07/01/2025 23:17:59 08/12/2025 18:35:35 glmf32.dll
07/01/2025 23:17:59 08/12/2025 18:36:34 MirrorDrvCompat.dll
07/01/2025 23:17:59 08/12/2025 18:35:30 eqossnap.dll
07/01/2025 23:17:59 08/12/2025 18:35:35 fwcfg.dll
07/01/2025 23:17:59 08/12/2025 18:36:53 ProvSysprep.dll
07/01/2025 23:17:59 08/12/2025 18:35:25 dfshim.dll
07/01/2025 23:17:59 08/12/2025 18:36:59 sharemediacpl.dll
07/01/2025 23:17:59 08/12/2025 18:36:56 RdpRelayTransport.dll
07/01/2025 23:17:59 18/11/2025 18:54:17 SecurityCenterBroker.dll
07/01/2025 23:17:59 10/12/2025 10:41:26 WebClnt.dll
07/01/2025 23:18:00 10/12/2025 13:43:24 mfperfhelper.dll
07/01/2025 23:18:00 08/12/2025 18:36:36 MSAlacDecoder.dll
07/01/2025 23:18:00 08/12/2025 18:36:36 MSAlacEncoder.dll
07/01/2025 23:18:00 08/12/2025 18:36:39 MSOpusDecoder.dll
07/01/2025 23:18:00 08/12/2025 18:36:36 MSAMRNBSource.dll
07/01/2025 23:18:00 08/12/2025 18:36:31 MFWMAAEC.DLL
07/01/2025 23:18:01 08/12/2025 18:35:18 CastingShellExt.dll
07/01/2025 23:18:01 08/12/2025 18:36:35 MP43DECD.DLL
07/01/2025 23:18:02 08/12/2025 18:37:08 VmComputeProxy.dll
07/01/2025 23:18:02 08/12/2025 18:36:33 Microsoft.Uev.AgentDriverEvents.dll
07/01/2025 23:18:02 10/12/2025 13:43:19 vmiccore.dll
07/01/2025 23:18:02 08/12/2025 18:37:09 vmhbmgmt.dll
07/01/2025 23:18:02 10/12/2025 0:28:28  vmwpctrl.dll
07/01/2025 23:18:02 10/12/2025 13:43:19 vmprox.dll
07/01/2025 23:18:02 08/12/2025 18:37:09 vmmsprox.dll
07/01/2025 23:18:02 10/12/2025 13:43:19 VrdUmed.dll
07/01/2025 23:18:02 08/12/2025 18:37:09 vmhgs.dll
07/01/2025 23:18:02 08/12/2025 18:37:08 vmdebug.dll
07/01/2025 23:18:02 08/12/2025 18:35:37 hgsclientplugin.dll
07/01/2025 23:18:02 10/12/2025 10:41:25 hgclientservice.dll
07/01/2025 23:18:02 08/12/2025 18:37:09 vmicrdv.dll
07/01/2025 23:18:02 08/12/2025 18:37:09 vmtpm.dll
07/01/2025 23:18:02 10/12/2025 10:41:25 NvAgent.dll
07/01/2025 23:18:02 08/12/2025 18:37:09 vmsynthfcvdev.dll
07/01/2025 23:18:02 10/12/2025 21:51:28 RemoteFileBrowse.dll
07/01/2025 23:18:02 08/12/2025 18:35:10 AppManagementConfiguration.dll
07/01/2025 23:18:02 08/12/2025 18:36:23 KeyboardFilterShim.dll
07/01/2025 23:18:02 30/10/2025 11:25:40 uwfservicingapi.dll
07/01/2025 23:18:02 10/12/2025 21:52:55 accountaccessor.dll
07/01/2025 23:18:02 10/12/2025 21:52:55 APHostClient.dll
07/01/2025 23:18:02 10/12/2025 21:52:54 InprocLogger.dll
07/01/2025 23:18:02 10/12/2025 21:52:54 networkhelper.dll
07/01/2025 23:18:02 08/12/2025 18:35:42 internetmail.dll
07/01/2025 23:18:02 10/12/2025 21:52:54 MCCSPal.dll
07/01/2025 23:18:02 08/12/2025 18:37:19 wmpshell.dll
07/01/2025 23:18:03 08/12/2025 18:36:41 mstask.dll
07/01/2025 23:18:04 08/12/2025 18:35:17 BrokerFileDialog.dll
07/01/2025 23:18:04 08/12/2025 18:36:55 PSModuleDiscoveryProvider.dll
07/01/2025 23:18:04 10/12/2025 11:25:22 TSSessionUX.dll
07/01/2025 23:18:05 08/12/2025 18:37:17 witnesswmiv2provider.dll
07/01/2025 23:18:05 18/11/2025 18:52:01 mgmtapi.dll
07/01/2025 23:18:05 08/12/2025 18:36:23 keymgr.dll
07/01/2025 23:18:05 08/12/2025 18:35:29 dsuiext.dll
07/01/2025 23:18:05 08/12/2025 18:35:29 EapTeapExt.dll
07/01/2025 23:18:05 08/12/2025 18:36:48 nshipsec.dll
07/01/2025 23:18:05 08/12/2025 18:35:32 fdWNet.dll
07/01/2025 23:18:07 08/12/2025 18:35:22 cryptuiwizard.dll
07/01/2025 23:18:07 08/12/2025 18:36:55 pwrshplugin.dll
07/01/2025 23:18:07 08/12/2025 18:35:29 DscTimer.dll
07/01/2025 23:18:07 08/12/2025 18:35:28 DscCore.dll
07/01/2025 23:18:07 08/12/2025 18:35:29 dscproxy.dll
07/01/2025 23:18:07 08/12/2025 18:35:29 dssec.dll
07/01/2025 23:18:07 08/12/2025 18:35:15 azroleui.dll
07/01/2025 23:18:07 10/12/2025 21:51:02 SyncInfrastructure.dll
07/01/2025 23:18:08 08/12/2025 18:35:20 CIWmi.dll
07/01/2025 23:18:08 08/12/2025 18:37:00 SrpUxNativeSnapIn.dll
07/01/2025 23:18:09 08/12/2025 18:36:27 mcicda.dll
07/01/2025 23:18:09 08/12/2025 18:35:32 fdeploy.dll
07/01/2025 23:18:09 10/12/2025 21:51:00 Windows.ApplicationModel.Background.SystemEventsBroker.dll
07/01/2025 23:18:09 08/12/2025 18:35:08 AddressParser.dll
07/01/2025 23:18:10 09/12/2025 9:48:20  d3d10.dll
07/01/2025 23:18:10 18/11/2025 10:59:29 rasctrs.dll
07/01/2025 23:18:11 08/12/2025 18:35:29 dsquery.dll
07/01/2025 23:18:12 10/12/2025 21:50:10 devrtl.dll
07/01/2025 23:18:12 08/12/2025 18:35:38 hotplug.dll
07/01/2025 23:18:12 10/12/2025 11:24:39 profprov.dll
07/01/2025 23:18:12 03/12/2025 12:39:03 ActionCenterCPL.dll
07/01/2025 23:18:12 10/12/2025 21:50:57 fltLib.dll
07/01/2025 23:18:13 18/11/2025 10:59:29 esentprf.dll
07/01/2025 23:18:13 08/12/2025 18:35:41 icsigd.dll
07/01/2025 23:18:13 08/12/2025 18:36:35 mpeval.dll
07/01/2025 23:18:13 08/12/2025 18:37:01 Tabbtn.dll
07/01/2025 23:18:14 10/12/2025 21:50:59 Syncreg.dll
07/01/2025 23:18:14 10/12/2025 11:26:17 remotepg.dll
07/01/2025 23:18:14 08/12/2025 18:36:58 serwvdrv.dll
07/01/2025 23:18:14 10/12/2025 11:24:39 WMASF.DLL
07/01/2025 23:18:16 08/12/2025 18:37:17 WinMsoIrmProtector.dll
07/01/2025 23:18:16 10/12/2025 11:24:50 cmutil.dll
07/01/2025 23:18:16 08/12/2025 18:35:44 kbd106n.dll
07/01/2025 23:18:17 02/12/2025 12:43:29 sxproxy.dll
07/01/2025 23:18:17 08/12/2025 18:36:46 NaturalAuthClient.dll
07/01/2025 23:18:17 10/12/2025 21:50:59 MediaFoundation.DefaultPerceptionProvider.dll
07/01/2025 23:18:17 10/12/2025 21:56:20 bcastdvr.proxy.dll
07/01/2025 23:18:17 10/12/2025 11:23:55 TempSignedLicenseExchangeTask.dll
07/01/2025 23:18:17 10/12/2025 21:52:16 FileAppxStreamingDataSource.dll
07/01/2025 23:18:17 08/12/2025 18:36:51 PimIndexMaintenanceClient.dll
07/01/2025 23:18:17 18/11/2025 14:24:35 vds_ps.dll
07/01/2025 23:18:17 08/12/2025 18:37:04 TimeBrokerClient.dll
07/01/2025 23:18:17 08/12/2025 18:35:22 CSystemEventsBrokerClient.dll
07/01/2025 23:18:17 10/12/2025 21:50:28 wshqos.dll
07/01/2025 23:18:17 08/12/2025 18:35:32 fdWCN.dll
07/01/2025 23:18:17 08/12/2025 18:35:10 AppointmentApis.dll
07/01/2025 23:18:17 10/12/2025 21:55:51 ErrorDetailsCore.dll
07/01/2025 23:18:17 08/12/2025 18:37:15 Windows.Devices.Custom.ps.dll
07/01/2025 23:18:17 08/12/2025 18:37:15 Windows.Devices.Background.ps.dll
07/01/2025 23:18:18 08/12/2025 18:37:10 wci.dll
07/01/2025 23:18:18 08/12/2025 18:36:24 LegacyNetUX.dll
07/01/2025 23:18:18 08/12/2025 18:36:23 KeywordDetectorMsftSidAdapter.dll
07/01/2025 23:18:18 10/12/2025 21:50:12 Windows.UI.Xaml.Resources.Common.dll
07/01/2025 23:18:18 10/12/2025 11:25:20 tier2punctuations.dll
07/01/2025 23:18:18 10/12/2025 11:36:31 mfcsubs.dll
07/01/2025 23:18:18 08/12/2025 18:35:21 colbact.dll
07/01/2025 23:18:18 08/12/2025 20:22:24 d3d10_1core.dll
07/01/2025 23:18:18 10/12/2025 10:41:25 lmhsvc.dll
07/01/2025 23:18:18 08/12/2025 18:36:39 mspatchc.dll
07/01/2025 23:18:18 08/12/2025 18:37:00 spwizimg.dll
07/01/2025 23:18:18 18/11/2025 10:59:29 usbperf.dll
07/01/2025 23:18:18 08/12/2025 18:35:27 DockInterface.ProxyStub.dll
07/01/2025 23:18:18 08/12/2025 18:35:15 BamSettingsClient.dll
07/01/2025 23:18:18 08/12/2025 18:36:45 muifontsetup.dll
07/01/2025 23:18:18 08/12/2025 18:36:50 pcsvDevice.dll
07/01/2025 23:18:19 10/12/2025 21:50:58 nrtapi.dll
07/01/2025 23:18:19 08/12/2025 18:37:05 tsbyuv.dll
07/01/2025 23:18:19 08/12/2025 18:36:27 mciqtz32.dll
07/01/2025 23:18:19 08/12/2025 18:35:18 certenc.dll
07/01/2025 23:18:19 08/12/2025 18:35:35 GameBarPresenceWriter.proxy.dll
07/01/2025 23:18:19 08/12/2025 18:35:35 GamePanelExternalHook.dll
07/01/2025 23:18:19 08/12/2025 18:36:57 scansetting.dll
07/01/2025 23:18:19 10/12/2025 21:51:03 azroles.dll
07/01/2025 23:18:19 08/12/2025 18:37:10 WABSyncProvider.dll
07/01/2025 23:18:19 08/12/2025 18:37:00 SyncHostps.dll
07/01/2025 23:18:19 08/12/2025 18:36:46 ndproxystub.dll
07/01/2025 23:18:19 08/12/2025 18:35:26 dinput8.dll
07/01/2025 23:18:19 10/12/2025 11:24:44 perfts.dll
07/01/2025 23:18:19 08/12/2025 18:36:57 sbeio.dll
07/01/2025 23:18:19 08/12/2025 18:35:27 dmsynth.dll
07/01/2025 23:18:19 08/12/2025 18:35:32 fhevents.dll
07/01/2025 23:18:19 10/12/2025 21:52:16 SecurityCenterBrokerPS.dll
07/01/2025 23:18:19 10/12/2025 21:50:55 msxml6r.dll
07/01/2025 23:18:19 08/12/2025 18:36:36 MSAMRNBDecoder.dll
07/01/2025 23:18:19 10/12/2025 11:24:34 mfps.dll
07/01/2025 23:18:19 30/10/2025 11:25:27 ManagedWindowsVM.ProxyStub.dll
07/01/2025 23:18:19 08/12/2025 18:35:37 hgclientserviceps.dll
07/01/2025 23:18:19 08/12/2025 18:35:14 AttestationWmiProvider.dll
07/01/2025 23:18:20 08/12/2025 18:37:19 wmpdxm.dll
07/01/2025 23:18:21 08/12/2025 18:37:19 WpcApi.dll
07/01/2025 23:18:21 10/12/2025 21:50:54 SystemEventsBrokerClient.dll
07/01/2025 23:18:21 08/12/2025 18:35:34 frprov.dll
07/01/2025 23:18:21 08/12/2025 18:36:34 mmgaclient.dll
07/01/2025 23:18:21 10/12/2025 21:51:40 vsstrace.dll
07/01/2025 23:18:21 09/12/2025 9:48:20  d3d10core.dll
07/01/2025 23:18:21 10/12/2025 21:50:10 npmproxy.dll
07/01/2025 23:18:21 10/12/2025 21:50:11 devobj.dll
07/01/2025 23:18:21 10/12/2025 21:50:59 ActionCenter.dll
07/01/2025 23:18:21 10/12/2025 11:24:37 dmocx.dll
07/01/2025 23:18:22 09/12/2025 9:48:17  msvfw32.dll
07/01/2025 23:18:22 08/12/2025 18:35:28 DscCoreConfProv.dll
07/01/2025 23:18:22 08/12/2025 18:37:20 wsplib.dll
07/01/2025 23:18:22 08/12/2025 18:35:36 glu32.dll
07/01/2025 23:18:22 08/12/2025 18:37:06 uniplat.dll
07/01/2025 23:18:22 08/12/2025 18:35:24 ddputils.dll
07/01/2025 23:18:22 08/12/2025 18:36:33 Microsoft.Uev.SmbSyncProvider.dll
07/01/2025 23:18:22 08/12/2025 18:35:20 CIRCoInst.dll
07/01/2025 23:18:22 08/12/2025 18:35:20 cmcfg32.dll
07/01/2025 23:18:23 08/12/2025 18:35:16 BcastDVRBroker.dll
07/01/2025 23:18:23 10/12/2025 11:02:47 vdsutil.dll
07/01/2025 23:18:23 10/12/2025 10:37:27 filemgmt.dll
07/01/2025 23:18:23 10/12/2025 13:27:15 msxml3r.dll
07/01/2025 23:18:23 08/12/2025 18:24:55 msdelta.dll
07/01/2025 23:18:23 08/12/2025 18:37:00 spwizres.dll
07/01/2025 23:18:23 08/12/2025 18:36:46 NetDriverInstall.dll
07/01/2025 23:18:23 08/12/2025 18:35:43 iyuv_32.dll
07/01/2025 23:18:23 08/12/2025 18:35:17 bridgeres.dll
07/01/2025 23:18:24 08/12/2025 18:35:15 AzSqlExt.dll
07/01/2025 23:18:24 08/12/2025 18:35:35 gcdef.dll
07/01/2025 23:18:24 08/12/2025 18:36:36 MSAMRNBEncoder.dll
07/01/2025 23:18:24 08/12/2025 18:37:18 wmdmps.dll
07/01/2025 23:18:24 08/12/2025 18:36:55 racpldlg.dll
07/01/2025 23:18:25 08/12/2025 18:37:07 ustprov.dll
07/01/2025 23:18:25 10/12/2025 11:25:32 wscisvif.dll
07/01/2025 23:18:25 08/12/2025 18:36:58 SecurityHealthProxyStub.dll
07/01/2025 23:18:25 08/12/2025 18:36:35 mmgaproxystub.dll
07/01/2025 23:18:25 10/12/2025 11:25:59 Windows.Media.Speech.UXRes.dll
07/01/2025 23:18:25 08/12/2025 18:38:02 loadperf.dll
07/01/2025 23:18:26 09/12/2025 9:48:17  avicap32.dll
07/01/2025 23:18:26 02/12/2025 12:40:30 mdminst.dll
07/01/2025 23:18:26 08/12/2025 18:35:41 iernonce.dll
07/01/2025 23:18:26 08/12/2025 18:36:33 Microsoft.Uev.LocalSyncProvider.dll
07/01/2025 23:18:26 08/12/2025 18:35:11 AppVIntegration.dll
07/01/2025 23:18:26 08/12/2025 18:37:03 tetheringconfigsp.dll
07/01/2025 23:18:26 10/12/2025 21:56:20 BcastDVRClient.dll
07/01/2025 23:18:26 08/12/2025 18:35:30 EmailApis.dll
07/01/2025 23:18:26 10/12/2025 11:24:21 dispex.dll
07/01/2025 23:18:27 08/12/2025 18:37:07 uxlib.dll
07/01/2025 23:18:27 10/12/2025 10:37:28 AuthFWGP.dll
07/01/2025 23:18:27 08/12/2025 18:36:38 MsixDataSourceExtensionPS.dll
07/01/2025 23:18:27 08/12/2025 18:36:51 pid.dll
07/01/2025 23:18:27 08/12/2025 18:35:18 cca.dll
07/01/2025 23:18:27 08/12/2025 18:35:32 fhsrchapi.dll
07/01/2025 23:18:27 08/12/2025 18:36:36 MSAMRNBSink.dll
07/01/2025 23:18:27 10/12/2025 21:50:59 icuin.dll
07/01/2025 23:18:27 10/12/2025 11:25:32 wscproxystub.dll
07/01/2025 23:18:27 08/12/2025 18:35:16 BingOnlineServices.dll
07/01/2025 23:18:27 08/12/2025 18:37:06 uicom.dll
07/01/2025 23:18:27 08/12/2025 18:35:41 iesetup.dll
07/01/2025 23:18:27 08/12/2025 18:36:33 Microsoft.Uev.MonitorSyncProvider.dll
07/01/2025 23:18:27 08/12/2025 18:35:28 dot3msm.dll
07/01/2025 23:18:27 10/12/2025 21:56:20 BcastDVRCommon.dll
07/01/2025 23:18:27 08/12/2025 18:35:19 ChatApis.dll
07/01/2025 23:18:28 08/12/2025 18:37:07 uxlibres.dll
07/01/2025 23:18:28 09/12/2025 8:42:17  fhsrchph.dll
07/01/2025 23:18:28 08/12/2025 18:37:00 storagewmi_passthru.dll
07/01/2025 23:18:28 10/12/2025 0:29:03  diagnosticdataquery.dll
07/01/2025 23:18:28 10/12/2025 21:50:59 icuuc.dll
07/01/2025 23:18:28 08/12/2025 18:35:31 ExtrasXmlParser.dll
07/01/2025 23:18:28 08/12/2025 18:36:27 mciavi32.dll
07/01/2025 23:18:28 08/12/2025 18:35:41 icmui.dll
07/01/2025 23:18:28 08/12/2025 18:36:25 MapConfiguration.dll
07/01/2025 23:18:28 08/12/2025 18:36:35 modemui.dll
07/01/2025 23:18:28 24/11/2025 10:15:04 srmtrace.dll
07/01/2025 23:18:29 08/12/2025 18:36:33 Microsoft.Uev.SyncCommon.dll
07/01/2025 23:18:29 08/12/2025 18:35:12 AppVOrchestration.dll
07/01/2025 23:18:29 08/12/2025 18:37:20 wshcon.dll
07/01/2025 23:18:29 10/12/2025 11:24:30 Windows.Media.Playback.ProxyStub.dll
07/01/2025 23:18:29 08/12/2025 18:36:52 POSyncServices.dll
07/01/2025 23:18:29 08/12/2025 18:36:40 msrle32.dll
07/01/2025 23:18:29 08/12/2025 18:36:58 serialui.dll
07/01/2025 23:18:29 08/12/2025 18:36:26 MapControlCore.dll
07/01/2025 23:18:29 08/12/2025 18:35:11 AppVEntStreamingManager.dll
07/01/2025 23:18:29 08/12/2025 18:36:51 PhoneCallHistoryApis.dll
07/01/2025 23:18:29 10/12/2025 0:28:39  eappprxy.dll
07/01/2025 23:18:29 08/12/2025 18:37:20 WsmWmiPl.dll
07/01/2025 23:18:30 08/12/2025 18:36:43 msvidc32.dll
07/01/2025 23:18:30 10/12/2025 10:41:26 UserDataAccessRes.dll
07/01/2025 23:18:30 08/12/2025 18:36:26 MapControlStringsRes.dll
07/01/2025 23:18:30 08/12/2025 18:36:33 Microsoft.Uev.SyncConditions.dll
07/01/2025 23:18:30 10/12/2025 21:51:28 srmshell.dll
07/01/2025 23:18:30 08/12/2025 18:37:06 UserDataAccountApis.dll
07/01/2025 23:18:30 08/12/2025 18:35:13 AppVStreamingUX.dll
07/01/2025 23:18:30 08/12/2025 18:35:29 eappgnui.dll
07/01/2025 23:18:30 10/12/2025 21:52:55 UserDataLanguageUtil.dll
07/01/2025 23:18:30 08/12/2025 18:36:32 Microsoft-Windows-MapControls.dll
07/01/2025 23:18:30 08/12/2025 18:37:01 TaskApis.dll
07/01/2025 23:18:30 08/12/2025 18:35:29 dxpps.dll
07/01/2025 23:18:30 08/12/2025 18:36:35 MosHostClient.dll
07/01/2025 23:18:30 08/12/2025 18:35:12 AppVPublishing.dll
07/01/2025 23:18:30 08/12/2025 18:36:39 fhtask.dll
07/01/2025 23:18:30 10/12/2025 10:41:25 moshost.dll
07/01/2025 23:18:30 10/12/2025 10:35:57 wmploc.DLL
07/01/2025 23:18:30 10/12/2025 11:25:36 fhcleanup.dll
07/01/2025 23:18:31 10/12/2025 11:25:59 UserDataTypeHelperUtil.dll
07/01/2025 23:18:31 08/12/2025 18:36:35 moshostcore.dll
07/01/2025 23:18:31 08/12/2025 18:35:12 AppVScripting.dll
07/01/2025 23:18:31 08/12/2025 18:36:33 Microsoft.Uev.ModernAppCore.dll
07/01/2025 23:18:31 08/12/2025 18:36:33 Microsoft.Uev.ModernAppData.WinRT.dll
07/01/2025 23:18:31 08/12/2025 18:37:00 spwmp.dll
07/01/2025 23:18:31 08/12/2025 18:35:23 c_GSM7.DLL
07/01/2025 23:18:31 08/12/2025 18:36:26 MapsBtSvcProxy.dll
07/01/2025 23:18:31 08/12/2025 18:36:33 Microsoft.Uev.ModernSync.dll
07/01/2025 23:18:31 08/12/2025 18:35:22 C_G18030.DLL
07/01/2025 23:18:32 08/12/2025 18:36:32 Microsoft-Windows-MosHost.dll
07/01/2025 23:18:32 08/12/2025 18:36:33 Microsoft.Uev.Management.dll
07/01/2025 23:18:32 08/12/2025 18:35:23 C_IS2022.DLL
07/01/2025 23:18:32 08/12/2025 18:35:11 AppVManifest.dll
07/01/2025 23:18:32 08/12/2025 18:36:33 Microsoft.Uev.Management.WmiAccess.dll
07/01/2025 23:18:32 08/12/2025 18:36:26 MapsStore.dll
07/01/2025 23:18:32 08/12/2025 18:37:15 windows.applicationmodel.conversationalagent.internal.proxystub.dll
07/01/2025 23:18:32 08/12/2025 18:35:12 AppVPolicy.dll
07/01/2025 23:18:32 08/12/2025 18:36:33 Microsoft.Uev.Common.dll
07/01/2025 23:18:32 08/12/2025 18:36:26 mapsupdatetask.dll
07/01/2025 23:18:32 08/12/2025 18:37:15 windows.applicationmodel.conversationalagent.proxystub.dll
07/01/2025 23:18:32 08/12/2025 18:35:11 AppVFileSystemMetadata.dll
07/01/2025 23:18:32 08/12/2025 18:36:33 Microsoft.Uev.Common.WinRT.dll
07/01/2025 23:18:32 10/12/2025 11:24:38 mapstoasttask.dll
07/01/2025 23:18:32 08/12/2025 18:35:13 AppVStreamMap.dll
07/01/2025 23:18:32 08/12/2025 18:36:33 Microsoft.Uev.ManagedEventLogging.dll
07/01/2025 23:18:32 08/12/2025 18:37:05 TransportDSA.dll
07/01/2025 23:18:33 08/12/2025 18:36:33 Microsoft.Uev.EventLogMessages.dll
07/01/2025 23:18:33 10/12/2025 21:51:04 appvetwclientres.dll
07/01/2025 23:18:33 08/12/2025 18:35:11 appvetwstreamingux.dll
07/01/2025 23:18:33 08/12/2025 18:37:02 TelephonyInteractiveUserRes.dll
07/01/2025 23:18:33 08/12/2025 18:36:33 Microsoft.Uev.CmUtil.dll
07/01/2025 23:18:33 08/12/2025 18:35:12 AppVReporting.dll
07/01/2025 23:18:33 08/12/2025 18:36:33 Microsoft.Uev.CabUtil.dll
07/01/2025 23:18:33 10/12/2025 11:26:09 TransliterationRanker.dll
07/01/2025 23:18:33 08/12/2025 18:37:21 ztrace_maps.dll
14/01/2025 8:45:24  04/12/2025 14:30:44 SynCOM.dll
14/01/2025 8:45:24  04/12/2025 14:30:44 SynTPAPI.dll
14/01/2025 8:45:24  08/12/2025 18:37:01 SynTPRes.dll
15/01/2025 10:35:31 08/12/2025 18:37:05 TsUsbGDCoInstaller.dll
15/01/2025 10:35:34 08/12/2025 18:35:28 dsauth.dll
15/01/2025 10:35:34 10/12/2025 10:35:27 dciman32.dll
15/01/2025 10:35:34 08/12/2025 18:36:24 lpk.dll
15/01/2025 10:35:34 10/12/2025 14:17:01 fontsub.dll
15/01/2025 10:35:36 08/12/2025 18:36:35 MPG4DECD.DLL
15/01/2025 10:35:37 08/12/2025 18:36:57 rtpm.dll
15/01/2025 10:35:40 10/12/2025 11:25:13 wow64cpu.dll
06/02/2025 20:05:17 08/12/2025 18:36:56 ResBParser.dll
06/02/2025 20:05:17 08/12/2025 18:35:38 HrtfDspCpu.dll
06/02/2025 20:05:17 08/12/2025 18:35:07 aadjcsp.dll
06/02/2025 20:05:17 08/12/2025 18:35:07 4545ffe2-0dc4-4df4-9d02-299ef204635e_hvsocket.dll
06/02/2025 20:05:17 30/10/2025 11:25:14 07409496-a423-4a3e-b620-2cfb01a9318d_HyperV-ComputeNetwork.dll
06/02/2025 20:05:17 30/10/2025 11:25:19 f1db7d81-95be-4911-935a-8ab71629112a_HyperV-IsolatedVM.dll
06/02/2025 20:05:17 08/12/2025 18:35:09 appidapi.dll
06/02/2025 20:05:17 10/12/2025 10:41:25 appidsvc.dll
06/02/2025 20:05:20 10/12/2025 21:50:59 Windows.Devices.Radios.dll
06/02/2025 20:05:21 08/12/2025 18:35:26 DialogBlockerProc.dll
06/02/2025 20:05:21 08/12/2025 18:35:33 fhuxapi.dll
06/02/2025 20:05:21 08/12/2025 18:35:33 fhuxadapter.dll
06/02/2025 20:05:21 08/12/2025 18:35:33 fhuxcommon.dll
06/02/2025 20:05:21 08/12/2025 18:35:33 fhuxpresentation.dll
06/02/2025 20:05:22 10/12/2025 11:24:47 AdvancedEmojiDS.dll
06/02/2025 20:05:23 08/12/2025 18:36:45 MTFSpellcheckDS.dll
06/02/2025 20:05:23 10/12/2025 10:41:25 iscsidsc.dll
06/02/2025 20:05:23 08/12/2025 18:35:42 iscsied.dll
06/02/2025 20:05:23 08/12/2025 18:35:42 iscsiwmi.dll
06/02/2025 20:05:23 08/12/2025 18:35:42 iscsiwmiv2.dll
06/02/2025 20:05:24 08/12/2025 18:37:20 wslapi.dll
06/02/2025 20:05:24 10/12/2025 10:41:26 MessagingService.dll
06/02/2025 20:05:24 08/12/2025 18:36:36 msdart.dll
06/02/2025 20:05:24 10/12/2025 10:37:27 odbcint.dll
06/02/2025 20:05:25 08/12/2025 18:36:35 mprmsg.dll
06/02/2025 20:05:25 10/12/2025 0:09:28  auditpolcore.dll
06/02/2025 20:05:25 10/12/2025 21:50:59 netjoin.dll
06/02/2025 20:05:25 08/12/2025 18:36:57 sbservicetrigger.dll
06/02/2025 20:05:25 08/12/2025 18:36:23 keepaliveprovider.dll
06/02/2025 20:05:25 08/12/2025 18:35:40 iassvcs.dll
06/02/2025 20:05:25 08/12/2025 18:35:40 iaspolcy.dll
06/02/2025 20:05:25 08/12/2025 18:35:40 ias.dll
06/02/2025 20:05:27 10/12/2025 21:50:12 rtutils.dll
06/02/2025 20:05:27 08/12/2025 18:36:56 ReAgentTask.dll
06/02/2025 20:05:27 27/11/2025 12:53:54 TsUsbRedirectionGroupPolicyExtension.dll
06/02/2025 20:05:27 10/12/2025 21:50:12 rdpcredentialprovider.dll
06/02/2025 20:05:27 08/12/2025 18:37:17 winipcsecproc.dll
06/02/2025 20:05:28 08/12/2025 18:37:16 Windows.Security.Credentials.UI.CredentialPicker.dll
06/02/2025 20:05:28 08/12/2025 18:36:23 KeyCredMgr.dll
06/02/2025 20:05:29 10/12/2025 21:56:24 SharedPCCSP.dll
06/02/2025 20:20:21 08/12/2025 18:37:15 Windows.Management.SecureAssessment.CfgProvider.dll
06/02/2025 20:20:22 08/12/2025 18:37:08 VmEmulatedNic.dll
06/02/2025 20:20:22 10/12/2025 11:24:42 vpcievdev.dll
06/02/2025 20:20:39 10/12/2025 13:43:21 vmsifproxystub.dll
06/02/2025 20:20:39 08/12/2025 18:35:14 AuditSettingsProvider.dll
06/02/2025 20:20:40 08/12/2025 18:35:39 HvsiMachinePolicies.dll
12/02/2025 21:21:48 10/12/2025 21:52:16 bindfltapi.dll
10/03/2025 10:26:37 10/12/2025 13:41:23 pcaevts.dll
10/03/2025 10:26:41 08/12/2025 18:35:17 BthpanContextHandler.dll
10/03/2025 10:26:47 08/12/2025 18:35:23 ddpchunk.dll
10/03/2025 10:26:50 10/12/2025 21:50:54 declaredconfiguration.dll
10/03/2025 10:26:51 10/12/2025 21:51:00 dmcfgutils.dll
10/03/2025 10:26:52 10/12/2025 21:51:07 deviceregistration.dll
10/03/2025 10:26:52 08/12/2025 18:35:27 DMRCDecoder.dll
10/03/2025 10:26:53 02/12/2025 12:40:19 localsec.dll
10/03/2025 10:26:58 10/12/2025 21:51:04 wecsvc.dll
10/03/2025 10:26:59 08/12/2025 18:35:32 fhshl.dll
10/03/2025 10:27:02 02/12/2025 12:40:22 hhsetup.dll
10/03/2025 10:27:10 10/12/2025 21:50:59 elslad.dll
10/03/2025 10:27:13 10/12/2025 21:56:22 dmwmicsp.dll
10/03/2025 10:27:20 08/12/2025 18:36:41 msvcirt.dll
10/03/2025 10:27:22 08/12/2025 18:35:40 iasnap.dll
10/03/2025 10:27:22 08/12/2025 18:37:16 Windows.Networking.BackgroundTransfer.ContentPrefetchTask.dll
10/03/2025 10:27:22 08/12/2025 18:36:33 Microsoft-WindowsPhone-SEManagementProvider.dll
10/03/2025 10:27:22 08/12/2025 18:36:58 SEMgrPS.dll
10/03/2025 10:27:23 08/12/2025 18:36:59 SmartCardBackgroundPolicy.dll
10/03/2025 10:27:23 18/11/2025 19:03:11 NfcRadioMedia.dll
10/03/2025 10:27:23 10/12/2025 11:24:20 oleacchooks.dll
10/03/2025 10:27:34 08/12/2025 18:35:19 Chakrathunk.dll
10/03/2025 10:27:39 10/12/2025 13:26:44 Vault.dll
10/03/2025 10:27:39 10/12/2025 21:52:59 wscinterop.dll
10/03/2025 10:27:44 10/12/2025 21:51:07 WinSCard.dll
10/03/2025 10:27:53 08/12/2025 18:37:05 tspubwmi.dll
10/03/2025 10:27:59 10/12/2025 21:50:11 Windows.UI.Xaml.InkControls.dll
10/03/2025 10:28:05 08/12/2025 18:36:57 sas.dll
10/03/2025 10:28:06 10/12/2025 21:51:06 miutils.dll
10/03/2025 10:28:06 08/12/2025 18:36:54 prvdmofcomp.dll
10/03/2025 10:28:07 08/12/2025 18:37:20 WPTaskScheduler.dll
10/03/2025 10:28:20 08/12/2025 18:37:16 Windows.Media.Ocr.dll
10/03/2025 10:44:05 10/12/2025 11:24:49 ddptrace.dll
20/03/2025 18:07:00 08/12/2025 18:36:53 provdatastore.dll
20/03/2025 18:07:00 08/12/2025 18:36:56 RemovableMediaProvisioningPlugin.dll
20/03/2025 18:07:00 08/12/2025 18:37:15 Windows.Management.Provisioning.ProxyStub.dll
20/03/2025 18:07:00 08/12/2025 18:36:53 provisioningcommandscsp.dll
27/03/2025 19:15:05 08/12/2025 18:35:25 DevicePairingProxy.dll
27/03/2025 19:15:09 08/12/2025 18:35:39 HyperVSysprepProvider.dll
27/03/2025 19:15:10 10/12/2025 21:50:12 mobilenetworking.dll
27/03/2025 19:15:10 08/12/2025 18:36:56 ResourceMapper.dll
27/03/2025 19:15:14 30/10/2025 11:25:28 microsoft-windows-battery-events.dll
27/03/2025 19:15:16 08/12/2025 18:35:21 ComposableShellProxyStub.dll
27/03/2025 19:15:20 18/11/2025 18:51:49 difxapi.dll
27/03/2025 19:15:24 08/12/2025 18:35:30 esevss.dll
27/03/2025 19:15:26 10/12/2025 21:52:59 ieproxy.dll
27/03/2025 19:15:27 08/12/2025 18:36:47 NetworkCollectionAgent.dll
27/03/2025 19:15:29 08/12/2025 18:36:38 msiltcfg.dll
27/03/2025 19:15:29 08/12/2025 18:37:15 Windows.Internal.ShellCommon.Broker.dll
27/03/2025 19:15:30 08/12/2025 18:36:00 KBDINUK3.DLL
27/03/2025 19:15:30 08/12/2025 18:36:05 KBDMONS2.DLL
27/03/2025 19:15:31 08/12/2025 18:37:16 WindowsManagementServiceWinRt.ProxyStub.dll
27/03/2025 19:15:32 08/12/2025 18:37:18 wmidx.dll
27/03/2025 19:15:32 08/12/2025 18:37:19 wmpps.dll
27/03/2025 19:15:32 08/12/2025 18:36:30 mfAACEnc.dll
27/03/2025 19:15:33 08/12/2025 18:37:00 sqlsrv32.dll
27/03/2025 19:15:34 08/12/2025 18:36:36 msaatext.dll
27/03/2025 19:15:38 08/12/2025 21:06:51 PlayToManager.dll
27/03/2025 19:15:39 03/12/2025 11:59:41 powercpl.dll
27/03/2025 19:15:40 10/12/2025 21:50:54 WpnUserService.dll
27/03/2025 19:15:44 08/12/2025 18:35:14 AuthBrokerUI.dll
27/03/2025 19:15:48 03/12/2025 11:59:41 systemcpl.dll
27/03/2025 19:15:51 08/12/2025 18:36:36 msctfp.dll
27/03/2025 19:15:51 08/12/2025 18:37:05 ttdplm.dll
27/03/2025 19:15:55 08/12/2025 18:37:10 VscMgrPS.dll
27/03/2025 19:15:58 08/12/2025 18:37:18 wmcodecdspps.dll
27/03/2025 19:15:59 10/12/2025 11:26:27 netfxperf.dll
27/03/2025 19:15:59 10/12/2025 21:50:10 mscoree.dll
27/03/2025 19:25:22 08/12/2025 18:37:07 uwfcfgmgmt.dll
06/05/2025 8:54:40  10/12/2025 21:50:59 joinutil.dll
06/05/2025 8:54:45  08/12/2025 18:37:07 UserDataTimeUtil.dll
15/05/2025 9:41:46  10/12/2025 13:45:43 tetheringclient.dll
15/05/2025 9:41:54  08/12/2025 18:36:24 LockScreenContentHost.dll
15/05/2025 9:41:56  10/12/2025 10:41:25 autotimesvc.dll
15/05/2025 9:42:01  10/12/2025 14:20:15 WcnEapPeerProxy.dll
15/05/2025 9:42:10  10/12/2025 11:25:24 EcoScoreTask.dll
15/05/2025 9:42:13  08/12/2025 18:35:32 fhsettingsprovider.dll
15/05/2025 9:42:23  08/12/2025 18:37:15 Windows.Internal.CapturePicker.dll
15/05/2025 9:42:27  08/12/2025 18:36:28 McpManagementProxy.dll
15/05/2025 9:42:30  08/12/2025 18:36:31 mfh263enc.dll
15/05/2025 9:42:34  10/12/2025 21:50:59 NlsData000a.dll
15/05/2025 9:42:37  08/12/2025 18:35:17 BthAvrcpAppSvc.dll
15/05/2025 9:42:39  10/12/2025 21:56:09 OneSettingsClient.dll
15/05/2025 9:42:40  08/12/2025 18:36:50 PeerDistAD.dll
15/05/2025 9:42:40  10/12/2025 13:26:50 PeerDist.dll
15/05/2025 9:42:46  10/12/2025 21:50:58 RTMediaFrame.dll
15/05/2025 9:42:47  08/12/2025 18:37:16 Windows.Media.Renewal.dll
15/05/2025 9:42:53  10/12/2025 21:50:54 DeviceCredential.dll
15/05/2025 9:42:53  08/12/2025 18:37:16 Windows.Security.Authentication.Identity.Provider.dll
15/05/2025 9:42:56  10/12/2025 21:50:54 Windows.Shell.ServiceHostBuilder.dll
15/05/2025 9:43:08  08/12/2025 18:37:02 TelephonyInteractiveUser.dll
15/05/2025 9:43:08  10/12/2025 21:50:12 TetheringStation.dll
15/05/2025 9:43:16  10/12/2025 21:50:54 AppointmentActivation.dll
15/05/2025 9:43:17  10/12/2025 21:50:10 powrprof.dll
15/05/2025 9:43:18  08/12/2025 18:36:55 psisdecd.dll
15/05/2025 9:43:19  10/12/2025 13:36:39 Websocket.dll
15/05/2025 9:43:21  10/12/2025 21:50:54 winsqlite3.dll
15/05/2025 9:43:24  10/12/2025 13:45:44 mferror.dll
15/05/2025 9:43:36  10/12/2025 21:50:59 Windows.System.Profile.PlatformDiagnosticsAndUsageDataSettings.dll
09/07/2025 12:33:28 10/12/2025 11:25:54 vfntlmless.dll
09/07/2025 12:33:28 23/10/2025 11:25:27 vfnet.dll
09/07/2025 12:33:28 10/12/2025 21:51:08 vfprint.dll
09/07/2025 12:33:28 10/12/2025 11:26:11 vfnws.dll
09/07/2025 12:33:28 23/10/2025 11:25:14 cuzzapi.dll
09/07/2025 12:33:28 10/12/2025 11:26:03 vfcompat.dll
09/07/2025 12:33:28 23/10/2025 11:25:27 vfluapriv.dll
09/07/2025 12:33:28 23/10/2025 11:25:27 vfcuzz.dll
09/07/2025 12:33:28 23/10/2025 11:25:27 vfprintpthelper.dll
09/07/2025 12:33:30 10/12/2025 11:24:38 vrfcore.dll
09/07/2025 12:33:32 23/10/2025 11:25:13 appverifUI.dll
09/07/2025 12:33:32 23/10/2025 11:25:27 vfbasics.dll
09/07/2025 12:33:38 10/12/2025 11:24:34 ucrtbased.dll
09/07/2025 12:33:40 23/10/2025 11:25:14 d3d10sdklayers.dll
09/07/2025 12:33:40 23/10/2025 11:25:14 d3d10ref.dll
09/07/2025 12:33:40 23/10/2025 11:25:14 d3dref9.dll
09/07/2025 12:33:42 23/10/2025 11:25:27 vfrdvcompat.dll
13/08/2025 23:11:03 10/12/2025 21:50:11 ControlLib.dll
13/08/2025 23:11:04 04/12/2025 11:24:17 intel_gfx_api-x64.dll
13/08/2025 23:11:04 15/10/2025 13:50:39 mfxplugin64_hw.dll
13/08/2025 23:11:04 09/12/2025 9:48:18  libmfxhw64.dll
13/08/2025 23:11:05 10/12/2025 13:43:23 vulkan-1.dll
13/08/2025 23:11:05 05/12/2025 12:52:03 vulkan-1-999-0-0-0.dll
13/08/2025 23:11:05 15/10/2025 13:50:39 libvpl.dll
13/08/2025 23:11:05 15/10/2025 13:50:39 ze_intel_gpu_raytracing.dll
13/08/2025 23:11:05 15/10/2025 13:50:39 ze_validation_layer.dll
13/08/2025 23:11:05 15/10/2025 13:50:39 ze_tracing_layer.dll
13/08/2025 23:11:05 10/11/2025 9:34:26  ze_loader.dll
15/09/2025 21:42:46 10/12/2025 11:26:11 mfc140cht.dll
15/09/2025 21:42:48 14/10/2025 10:44:57 concrt140.dll
15/09/2025 21:42:48 14/10/2025 10:45:40 mfc140rus.dll
15/09/2025 21:42:48 14/10/2025 10:45:40 mfc140jpn.dll
15/09/2025 21:42:48 14/10/2025 10:45:40 mfc140kor.dll
15/09/2025 21:42:48 14/10/2025 10:45:40 mfcm140.dll
15/09/2025 21:42:48 23/10/2025 11:25:22 mfcm140ud.dll
15/09/2025 21:42:48 10/12/2025 11:25:13 mfcm140u.dll
15/09/2025 21:42:48 10/12/2025 11:26:12 mfcm140d.dll
15/09/2025 21:42:48 10/12/2025 11:26:20 concrt140d.dll
15/09/2025 21:42:48 14/10/2025 10:45:40 mfc140fra.dll
15/09/2025 21:42:48 14/10/2025 10:45:40 mfc140deu.dll
15/09/2025 21:42:48 14/10/2025 10:45:40 mfc140ita.dll
15/09/2025 21:42:48 14/10/2025 10:45:40 mfc140chs.dll
15/09/2025 21:42:48 14/10/2025 10:45:40 mfc140esn.dll
15/09/2025 21:42:48 14/10/2025 10:45:40 mfc140enu.dll
15/09/2025 21:42:50 23/10/2025 11:25:22 libomp140d.x86_64.dll
15/09/2025 21:42:50 23/10/2025 11:25:22 mfc140ud.dll
15/09/2025 21:42:50 14/10/2025 10:45:40 mfc140.dll
15/09/2025 21:42:50 23/10/2025 11:25:22 libomp140.x86_64.dll
15/09/2025 21:42:50 23/10/2025 11:25:22 mfc140d.dll
15/09/2025 21:42:50 14/10/2025 10:45:40 mfc140u.dll
15/09/2025 21:42:50 23/10/2025 11:25:23 msvcp140_1d.dll
15/09/2025 21:42:50 06/11/2025 13:11:33 msvcp140d_codecvt_ids.dll
15/09/2025 21:42:50 23/10/2025 11:25:23 msvcp140_2d.dll
15/09/2025 21:42:50 10/12/2025 13:43:23 msvcp140_codecvt_ids.dll
15/09/2025 21:42:50 10/12/2025 22:00:55 msvcp140_atomic_wait.dll
15/09/2025 21:42:50 06/11/2025 13:11:38 msvcp140d.dll
15/09/2025 21:42:50 23/10/2025 11:25:23 msvcp140d_atomic_wait.dll
15/09/2025 21:42:50 14/10/2025 10:45:36 vccorlib140.dll
15/09/2025 21:42:52 23/10/2025 11:25:27 vcruntime140_threadsd.dll
15/09/2025 21:42:52 10/12/2025 11:26:11 vccorlib140d.dll
15/09/2025 21:42:52 14/10/2025 10:45:36 vcamp140.dll
15/09/2025 21:42:52 23/10/2025 11:25:27 vcamp140d.dll
15/09/2025 21:42:52 23/10/2025 11:25:27 vcomp140d.dll
15/09/2025 21:42:52 23/10/2025 11:25:27 vcruntime140d.dll
15/09/2025 21:42:52 14/10/2025 10:45:36 vcomp140.dll
15/09/2025 21:42:52 14/10/2025 10:45:36 vcruntime140_threads.dll
15/09/2025 21:42:52 23/10/2025 11:25:27 vcruntime140_1d.dll
25/09/2025 13:33:52 08/12/2025 18:35:36 HalExtIntcLpioDMA.dll
25/09/2025 13:33:52 08/12/2025 18:35:37 HalExtPL080.dll
25/09/2025 13:33:52 08/12/2025 18:35:36 HalExtIntcPseDMA.dll
25/09/2025 13:33:53 08/12/2025 18:35:42 iscsilog.dll
25/09/2025 13:33:54 10/12/2025 21:50:35 vmcomputeeventlog.dll
25/09/2025 13:33:54 08/12/2025 18:35:21 computelibeventlog.dll
25/09/2025 13:33:54 10/12/2025 13:43:19 vmflexio.dll
25/09/2025 13:33:54 10/12/2025 13:43:19 vmfirmware.dll
25/09/2025 13:33:54 10/12/2025 13:43:19 vmserial.dll
25/09/2025 13:33:54 08/12/2025 18:36:48 oemlicense.dll
25/09/2025 13:33:54 08/12/2025 18:35:42 InputViewExperience.dll
25/09/2025 13:33:56 10/12/2025 13:43:19 vmsmb.dll
25/09/2025 13:33:56 10/12/2025 13:43:19 vmusrv.dll
25/09/2025 13:33:56 08/12/2025 18:35:07 ActionQueue.dll
25/09/2025 13:33:56 08/12/2025 18:35:07 69fe178f-26e7-43a9-aa7d-2b616b672dde_eventlogservice.dll
25/09/2025 13:33:57 08/12/2025 18:36:56 reguwpapi.dll
25/09/2025 13:33:57 10/12/2025 21:53:38 wtdccm.dll
25/09/2025 13:33:57 04/11/2025 9:00:51  c4d66f00-b6f0-4439-ac9b-c5ea13fe54d7_HyperV-ComputeCore.dll
25/09/2025 13:33:57 27/11/2025 12:53:39 d4d78066-e6db-44b7-b5cd-2eb82dce620c_HyperV-ComputeLegacy.dll
25/09/2025 13:33:57 27/11/2025 12:53:31 f989b52d-f928-44a3-9bf1-bf0c1da6a0d6_HyperV-DeviceVirtualization.dll
25/09/2025 13:33:57 08/12/2025 18:35:07 0ae3b998-9a38-4b72-a4c4-06849441518d_Servicing-Stack.dll
25/09/2025 13:33:57 27/11/2025 12:54:29 c28c7a4e-a619-4463-82b7-0fc9cc7187f5_HyperV-ComputeStorage.dll
25/09/2025 13:33:57 08/12/2025 18:35:10 AppVCatalog.dll
25/09/2025 13:33:58 08/12/2025 18:35:10 apprepapi.dll
25/09/2025 13:33:58 10/12/2025 0:28:32  audioresourceregistrar.dll
25/09/2025 13:33:58 08/12/2025 18:35:22 CoreMas.dll
25/09/2025 13:33:58 08/12/2025 18:35:18 CallButtons.dll
25/09/2025 13:33:58 08/12/2025 18:35:18 CallButtons.ProxyStub.dll
25/09/2025 13:33:58 30/10/2025 11:25:14 AuditPolicyGPInterop.dll
25/09/2025 13:33:58 30/10/2025 11:25:14 auditpolmsg.dll
25/09/2025 13:33:58 30/10/2025 11:25:14 AuditNativeSnapIn.dll
25/09/2025 13:33:58 08/12/2025 18:36:57 sdcpl.dll
25/09/2025 13:33:58 08/12/2025 18:36:20 kd_02_10df.dll
25/09/2025 13:33:58 08/12/2025 18:36:21 kd_02_10ec.dll
25/09/2025 13:33:58 08/12/2025 18:36:21 kd_02_1414.dll
25/09/2025 13:33:58 08/12/2025 18:36:21 kd_02_14e4.dll
25/09/2025 13:33:58 08/12/2025 18:36:21 kd_02_1137.dll
25/09/2025 13:33:58 08/12/2025 18:36:21 kd_02_15ad.dll
25/09/2025 13:33:58 08/12/2025 18:36:22 kd_02_15b3.dll
25/09/2025 13:33:58 08/12/2025 18:36:22 kd_02_1969.dll
25/09/2025 13:33:58 08/12/2025 18:36:22 kd_02_19a2.dll
25/09/2025 13:33:59 08/12/2025 18:36:22 kd_02_1af4.dll
25/09/2025 13:33:59 10/12/2025 21:50:11 netmsg.dll
25/09/2025 13:33:59 08/12/2025 18:35:16 BdeSysprep.dll
25/09/2025 13:33:59 08/12/2025 18:36:22 kd_07_1415.dll
25/09/2025 13:33:59 08/12/2025 18:36:22 kd_02_8086.dll
25/09/2025 13:33:59 08/12/2025 18:36:20 kdnet_uart16550.dll
25/09/2025 13:33:59 08/12/2025 18:36:23 kd_0C_8086.dll
25/09/2025 13:33:59 10/12/2025 21:50:10 bcd.dll
25/09/2025 13:34:00 08/12/2025 18:35:16 bootsvc.dll
25/09/2025 13:34:00 10/12/2025 11:23:53 BOOTVID.DLL
25/09/2025 13:34:01 08/12/2025 18:35:18 certCredProvider.dll
25/09/2025 13:34:01 08/12/2025 18:35:19 cfmifsproxy.dll
25/09/2025 13:34:01 08/12/2025 18:35:15 AutomaticAppSignInPolicy.dll
25/09/2025 13:34:01 10/12/2025 10:37:27 comres.dll
25/09/2025 13:34:01 08/12/2025 18:36:37 msdtcspoffln.dll
25/09/2025 13:34:02 10/12/2025 21:52:16 imagehlp.dll
25/09/2025 13:34:03 08/12/2025 18:35:24 deskadp.dll
25/09/2025 13:34:03 08/12/2025 18:35:20 cmgrcspps.dll
25/09/2025 13:34:03 10/12/2025 21:50:55 DMAppsRes.dll
25/09/2025 13:34:04 10/12/2025 21:50:10 DeviceMetadataRetrievalClient.dll
25/09/2025 13:34:04 08/12/2025 18:37:15 Windows.Devices.SerialCommunication.dll
25/09/2025 13:34:04 08/12/2025 18:35:23 d3d8thk.dll
25/09/2025 13:34:04 08/12/2025 18:35:28 dpnaddr.dll
25/09/2025 13:34:04 08/12/2025 18:35:24 ddrawex.dll
25/09/2025 13:34:04 08/12/2025 18:35:28 dpnet.dll
25/09/2025 13:34:05 02/12/2025 12:40:19 dmdskres.dll
25/09/2025 13:34:05 02/12/2025 12:40:19 dmdskres2.dll
25/09/2025 13:34:05 08/12/2025 18:35:27 dmintf.dll
25/09/2025 13:34:05 08/12/2025 18:35:26 dmdlgs.dll
25/09/2025 13:34:05 02/12/2025 12:40:19 dmutil.dll
25/09/2025 13:34:05 30/10/2025 11:25:17 DolbyDecMFT_redirect.dll
25/09/2025 13:34:05 10/12/2025 21:50:12 dot3api.dll
25/09/2025 13:34:05 08/12/2025 18:37:06 TtlsExt.dll
25/09/2025 13:34:05 08/12/2025 18:36:23 KeyboardFilterManager.dll
25/09/2025 13:34:05 10/12/2025 10:41:25 DialogBlockingService.dll
25/09/2025 13:34:05 08/12/2025 18:35:26 DialogBlockingManager.dll
25/09/2025 13:34:05 08/12/2025 18:37:19 WorkFoldersRes.dll
25/09/2025 13:34:06 10/12/2025 11:25:36 fhsvcctl.dll
25/09/2025 13:34:06 18/11/2025 18:51:59 fsutilext.dll
25/09/2025 13:34:06 10/12/2025 21:50:11 FontGlyphAnimator.dll
25/09/2025 13:34:06 10/12/2025 10:41:25 hidserv.dll
25/09/2025 13:34:06 08/12/2025 18:35:38 hnsproxy.dll
25/09/2025 13:34:06 08/12/2025 18:35:34 FirmwareAttestationServerProxyStub.dll
25/09/2025 13:34:07 08/12/2025 18:36:38 mshtmler.dll
25/09/2025 13:34:07 10/12/2025 21:50:11 imageres.dll
25/09/2025 13:34:08 08/12/2025 18:37:15 Windows.Internal.UI.BioEnrollment.ProxyStub.dll
25/09/2025 13:34:08 10/12/2025 21:57:14 Windows.Internal.UI.Logon.ProxyStub.dll
25/09/2025 13:34:08 10/12/2025 21:50:15 winnlsres.dll
25/09/2025 13:34:08 08/12/2025 18:36:17 KBDUS.DLL
25/09/2025 13:34:08 08/12/2025 18:36:47 nlsbres.dll
25/09/2025 13:34:08 10/12/2025 11:02:47 iologmsg.dll
25/09/2025 13:34:08 10/12/2025 11:37:34 microsoft-windows-kernel-processor-power-events.dll
25/09/2025 13:34:09 10/12/2025 10:55:00 LegacySystemSettings.dll
25/09/2025 13:34:09 08/12/2025 18:36:24 LangCleanupSysprepAction.dll
25/09/2025 13:34:09 08/12/2025 18:36:24 lpksetupproxyserv.dll
25/09/2025 13:34:09 08/12/2025 18:36:45 MUILanguageCleanup.dll
25/09/2025 13:34:09 08/12/2025 18:37:15 Windows.Management.SecureAssessment.Diagnostics.dll
25/09/2025 13:34:09 08/12/2025 18:37:15 Windows.Internal.Management.SecureAssessment.dll
25/09/2025 13:34:09 10/12/2025 21:52:55 SyncRes.dll
25/09/2025 13:34:09 08/12/2025 18:36:31 MFDshowReverseBridge.dll
25/09/2025 13:34:09 08/12/2025 18:35:29 dxmasf.dll
25/09/2025 13:34:09 08/12/2025 18:35:34 FsNVSDeviceSource.dll
25/09/2025 13:34:09 08/12/2025 18:37:18 wmerror.dll
25/09/2025 13:34:10 08/12/2025 18:36:35 MP3DMOD.DLL
25/09/2025 13:34:10 10/12/2025 11:24:40 MpeCm.dll
25/09/2025 13:34:10 08/12/2025 18:36:36 MSAC3ENC.DLL
25/09/2025 13:34:10 08/12/2025 18:36:44 MSVP9DEC.dll
25/09/2025 13:34:10 08/12/2025 18:36:44 MSVPXENC.dll
25/09/2025 13:34:10 10/12/2025 11:26:21 BingFilterDS.dll
25/09/2025 13:34:11 10/12/2025 21:50:12 ImplatSetup.dll
25/09/2025 13:34:11 08/12/2025 18:36:46 neth.dll
25/09/2025 13:34:11 08/12/2025 18:36:46 netevent.dll
25/09/2025 13:34:11 10/12/2025 21:50:57 oleaccrc.dll
25/09/2025 13:34:12 10/12/2025 21:51:25 p9np.dll
25/09/2025 13:34:12 08/12/2025 18:36:52 prflbmsg.dll
25/09/2025 13:34:12 08/12/2025 18:36:52 PrinterAssociationCommonProxy.dll
25/09/2025 13:34:13 10/12/2025 11:24:32 provdiagnostics.dll
25/09/2025 13:34:13 08/12/2025 18:36:23 KnobsCore.dll
25/09/2025 13:34:13 08/12/2025 18:36:23 KnobsCsp.dll
25/09/2025 13:34:14 08/12/2025 18:36:55 rastapi.dll
25/09/2025 13:34:14 08/12/2025 18:39:45 regidle.dll
25/09/2025 13:34:14 08/12/2025 18:37:17 winmsipc.dll
25/09/2025 13:34:14 08/12/2025 18:37:20 wshrm.dll
25/09/2025 13:34:14 10/12/2025 10:41:25 RMapi.dll
25/09/2025 13:34:15 10/12/2025 21:51:17 wshext.dll
25/09/2025 13:34:16 08/12/2025 18:35:34 fvecpl.dll
25/09/2025 13:34:16 30/10/2025 11:25:15 bderepair.dll
25/09/2025 13:34:16 10/12/2025 13:43:23 credssp.dll
25/09/2025 13:34:16 08/12/2025 18:35:30 easinvoker.proxystub.dll
25/09/2025 13:34:16 30/10/2025 11:25:36 secproc_ssp.dll
25/09/2025 13:34:16 30/10/2025 11:25:36 secproc_ssp_isv.dll
25/09/2025 13:34:16 08/12/2025 18:36:59 slcext.dll
25/09/2025 13:34:17 10/12/2025 0:00:05  sppwmi.dll
25/09/2025 13:34:17 10/12/2025 21:50:54 vaultcli.dll
25/09/2025 13:34:17 10/12/2025 11:23:55 SettingSyncDownloadHelper.dll
25/09/2025 13:34:17 10/12/2025 11:24:22 setupcln.dll
25/09/2025 13:34:17 08/12/2025 18:36:58 setupetw.dll
25/09/2025 13:34:17 08/12/2025 18:36:58 setupcl.dll
25/09/2025 13:34:17 10/12/2025 21:50:11 shacct.dll
25/09/2025 13:34:17 10/12/2025 0:28:57  shacctprofile.dll
25/09/2025 13:34:18 11/11/2025 21:27:34 microsoft-windows-sleepstudy-events.dll
25/09/2025 13:34:18 10/12/2025 10:41:25 certprop.dll
25/09/2025 13:34:18 08/12/2025 18:36:57 SCardDlg.dll
25/09/2025 13:34:18 10/12/2025 10:41:25 ScDeviceEnum.dll
25/09/2025 13:34:18 10/12/2025 21:51:12 smartscreen.dll
25/09/2025 13:34:19 10/12/2025 21:50:57 SwitcherDataModel.dll
25/09/2025 13:34:19 08/12/2025 18:37:00 spbcd.dll
25/09/2025 13:34:19 10/12/2025 21:51:04 advapi32res.dll
25/09/2025 13:34:19 08/12/2025 18:37:00 spopk.dll
25/09/2025 13:34:19 10/12/2025 21:50:12 pfclient.dll
25/09/2025 13:34:19 10/12/2025 12:51:28 srclient.dll
25/09/2025 13:34:19 08/12/2025 18:37:01 tapiui.dll
25/09/2025 13:34:20 08/12/2025 18:37:01 taskcomp.dll
25/09/2025 13:34:20 08/12/2025 18:37:01 taskbarcpl.dll
25/09/2025 13:34:20 10/12/2025 13:41:19 VoipRT.dll
25/09/2025 13:34:20 08/12/2025 18:36:24 LSCSHostPolicy.dll
25/09/2025 13:34:20 08/12/2025 18:36:24 lstelemetry.dll
25/09/2025 13:34:20 08/12/2025 18:36:55 rdpendp.dll
25/09/2025 13:34:20 08/12/2025 18:37:04 tlscsp.dll
25/09/2025 13:34:20 08/12/2025 18:37:06 UIManagerBrokerps.dll
25/09/2025 13:34:20 10/12/2025 10:41:25 trkwks.dll
25/09/2025 13:34:22 10/12/2025 11:25:12 UpdateReboot.dll
25/09/2025 13:34:22 10/12/2025 10:41:26 WalletService.dll
25/09/2025 13:34:22 08/12/2025 18:37:15 Windows.ApplicationModel.Wallet.dll
25/09/2025 13:34:22 08/12/2025 18:37:20 WwaApi.dll
25/09/2025 13:34:22 10/12/2025 11:24:39 WsmAgent.dll
25/09/2025 13:34:22 08/12/2025 18:37:20 WSManMigrationPlugin.dll
25/09/2025 13:34:22 08/12/2025 18:37:20 wsmplpxy.dll
25/09/2025 13:34:22 10/12/2025 21:51:04 WsmRes.dll
25/09/2025 13:34:23 10/12/2025 14:19:04 sysntfy.dll
25/09/2025 13:34:23 08/12/2025 18:37:20 wshelper.dll
25/09/2025 13:34:24 08/12/2025 18:37:19 WmpDui.dll
25/09/2025 13:34:24 08/12/2025 18:37:19 WofTasks.dll
25/09/2025 13:34:24 08/12/2025 18:36:48 ntvdm64.dll
25/09/2025 13:34:25 10/12/2025 21:51:02 TenantRestrictionsPlugin.dll
25/09/2025 13:34:29 08/12/2025 18:37:21 XblGameSaveProxy.dll
25/09/2025 13:34:29 08/12/2025 18:37:15 Windows.Gaming.XboxLive.Storage.dll
25/09/2025 13:34:29 10/12/2025 10:41:25 cloudidsvc.dll
25/09/2025 13:34:29 08/12/2025 18:37:16 WindowsInternal.Shell.CompUiActivation.dll
25/09/2025 13:34:30 08/12/2025 18:37:10 VPNv2CSP.dll
26/09/2025 16:13:54 08/12/2025 18:35:20 cmclient.dll
26/09/2025 16:13:58 10/12/2025 11:26:11 dpnhpast.dll
26/09/2025 16:14:00 10/12/2025 11:24:18 dpnhupnp.dll
26/09/2025 16:14:01 08/12/2025 18:35:28 dpnathlp.dll
26/09/2025 16:14:01 10/12/2025 11:26:13 dpnlobby.dll
03/10/2025 17:24:46 10/12/2025 13:43:19 gpupvdev.dll
03/10/2025 17:24:46 08/12/2025 18:37:09 vmictimeprovider.dll
03/10/2025 17:24:46 10/12/2025 10:41:26 icsvcvss.dll
03/10/2025 17:24:46 08/12/2025 18:36:57 sbresources.dll
03/10/2025 17:24:46 08/12/2025 18:37:08 VmApplicationHealthMonitorProxy.dll
03/10/2025 17:24:47 10/12/2025 13:43:19 vmbusvdev.dll
03/10/2025 17:24:47 08/12/2025 18:37:09 vmfirmwarepcat.dll
03/10/2025 17:24:47 10/12/2025 13:43:21 VmSynthNic.dll
03/10/2025 17:24:47 08/12/2025 18:37:09 vmpmem.dll
03/10/2025 17:24:47 10/12/2025 21:50:35 vmwpevents.dll
03/10/2025 17:24:47 10/12/2025 13:43:19 vmvpci.dll
03/10/2025 17:24:47 10/12/2025 21:50:15 amsi.dll
03/10/2025 17:24:47 08/12/2025 18:36:24 libcrypto.dll
03/10/2025 17:24:55 08/12/2025 18:35:37 hgattest.dll
03/10/2025 17:24:55 10/12/2025 0:28:29  vsconfig.dll
03/10/2025 17:24:55 10/12/2025 21:51:04 vid.dll
03/10/2025 17:24:56 08/12/2025 18:35:42 IoTAssignedAccessLockFramework.dll
03/10/2025 17:24:57 10/12/2025 21:51:15 wshbth.dll
03/10/2025 17:24:58 08/12/2025 18:35:20 CloudRecoveryDownloadTool.dll
03/10/2025 17:24:58 10/12/2025 21:56:24 ManageCI.dll
03/10/2025 17:24:59 08/12/2025 18:37:06 UsbTask.dll
03/10/2025 17:24:59 08/12/2025 18:35:22 console.dll
03/10/2025 17:24:59 08/12/2025 18:35:26 DictationManager.dll
03/10/2025 17:24:59 08/12/2025 18:35:30 edpcsp.dll
03/10/2025 17:25:00 10/12/2025 11:24:49 LanguagePackManagementCSP.dll
03/10/2025 17:25:00 08/12/2025 18:36:47 NetworkQoSPolicyCSP.dll
03/10/2025 17:25:01 10/12/2025 10:41:25 umpnpmgr.dll
03/10/2025 17:25:02 10/12/2025 21:50:54 webthreatdefusersvc.dll
03/10/2025 17:25:05 08/12/2025 18:37:15 Windows.AI.MachineLearning.dll
03/10/2025 17:25:05 10/12/2025 14:20:05 onnxruntime.dll
03/10/2025 17:25:06 08/12/2025 18:35:09 Apphlpdm.dll
03/10/2025 17:25:06 08/12/2025 18:36:59 shimeng.dll
03/10/2025 17:25:08 08/12/2025 18:35:30 EnterpriseAppVMgmtCSP.dll
03/10/2025 17:25:09 08/12/2025 18:36:33 Microsoft.Uev.ConfigWrapper.dll
03/10/2025 17:25:09 08/12/2025 18:36:33 Microsoft.Uev.Office2010CustomActions.dll
03/10/2025 17:25:10 08/12/2025 18:35:30 EnterpriseModernAppMgmtCSP.dll
03/10/2025 17:25:10 09/12/2025 23:31:02 MessagingDataModel2.dll
03/10/2025 17:25:11 10/12/2025 21:51:17 atl.dll
03/10/2025 17:25:12 08/12/2025 18:36:56 remoteaudioendpoint.dll
03/10/2025 17:25:12 08/12/2025 18:35:29 dsdmo.dll
03/10/2025 17:25:12 08/12/2025 18:36:28 mciwave.dll
03/10/2025 17:25:13 08/12/2025 18:36:24 LockScreenContent.dll
03/10/2025 17:25:13 10/12/2025 13:45:51 OnDemandBrokerClient.dll
03/10/2025 17:25:13 04/12/2025 11:24:57 autoplay.dll
03/10/2025 17:25:13 08/12/2025 18:36:20 kdstub.dll
03/10/2025 17:25:13 10/12/2025 21:51:40 BitsProxy.dll
03/10/2025 17:25:18 08/12/2025 18:35:17 browserbroker.dll
03/10/2025 17:25:18 08/12/2025 18:35:17 BWContextHandler.dll
03/10/2025 17:25:18 08/12/2025 18:35:18 cdosys.dll
03/10/2025 17:25:18 08/12/2025 18:35:18 certmgr.dll
03/10/2025 17:25:19 08/12/2025 18:35:19 cfmifs.dll
03/10/2025 17:25:22 08/12/2025 18:35:21 comrepl.dll
03/10/2025 17:25:22 10/12/2025 11:24:17 catsrv.dll
03/10/2025 17:25:22 10/12/2025 11:36:31 catsrvut.dll
03/10/2025 17:25:22 08/12/2025 18:35:21 comsnap.dll
03/10/2025 17:25:23 08/12/2025 18:36:33 Microsoft.Media.PlayReady.Appraiser.dll
03/10/2025 17:25:24 10/12/2025 11:24:11 XpsGdiConverter.dll
03/10/2025 17:25:25 10/12/2025 14:17:01 xpspushlayer.dll
03/10/2025 17:25:25 08/12/2025 18:37:21 XpsRasterService.dll
03/10/2025 17:25:25 10/12/2025 21:50:55 container.dll
03/10/2025 17:25:25 10/12/2025 0:28:34  CCGLaunchPad.dll
03/10/2025 17:25:27 02/12/2025 11:53:58 WcnApi.dll
03/10/2025 17:25:28 18/11/2025 18:51:58 cryptdll.dll
03/10/2025 17:25:28 10/12/2025 21:51:28 cryptext.dll
03/10/2025 17:25:29 10/12/2025 21:50:10 dbghelp.dll
03/10/2025 17:25:29 10/12/2025 10:41:25 defragsvc.dll
03/10/2025 17:25:29 10/12/2025 10:35:51 domiprov.dll
03/10/2025 17:25:30 08/12/2025 18:35:28 dpx.dll
03/10/2025 17:25:32 10/12/2025 11:24:53 deploymentcsps.dll
03/10/2025 17:25:34 08/12/2025 18:36:56 RemoveDeviceContextHandler.dll
03/10/2025 17:25:34 08/12/2025 18:37:00 StorageContextHandler.dll
03/10/2025 17:25:34 08/12/2025 18:35:24 DeviceCompanionAppInstall.dll
03/10/2025 17:25:35 10/12/2025 21:51:13 Win32_DeviceGuard.dll
03/10/2025 17:25:35 10/12/2025 21:51:00 dmoleaututils.dll
03/10/2025 17:25:35 10/12/2025 21:50:55 dmpushproxy.dll
03/10/2025 17:25:35 10/12/2025 21:50:55 DMPushRouterCore.dll
03/10/2025 17:25:35 08/12/2025 18:35:29 dynamoapi.dll
03/10/2025 17:25:35 10/12/2025 21:50:54 dmenterprisediagnostics.dll
03/10/2025 17:25:35 08/12/2025 18:36:29 mdmlocalmanagement.dll
03/10/2025 17:25:35 08/12/2025 18:36:29 mdmpostprocessevaluator.dll
03/10/2025 17:25:36 08/12/2025 18:35:24 DevicePairing.dll
03/10/2025 17:25:36 08/12/2025 18:37:15 Windows.Devices.LowLevel.dll
03/10/2025 17:25:36 08/12/2025 18:37:15 Windows.Devices.Printers.dll
03/10/2025 17:25:36 10/12/2025 13:41:17 Windows.Devices.WiFi.dll
03/10/2025 17:25:37 10/12/2025 10:41:25 DiagSvc.dll
03/10/2025 17:25:37 10/12/2025 11:23:46 dssenh.dll
03/10/2025 17:25:38 10/12/2025 21:52:59 directml.dll
03/10/2025 17:25:38 08/12/2025 18:36:55 qcap.dll
03/10/2025 17:25:38 08/12/2025 18:36:55 qdv.dll
03/10/2025 17:25:38 08/12/2025 18:35:09 amstream.dll
03/10/2025 17:25:41 10/12/2025 21:52:59 dxilconv.dll
03/10/2025 17:25:42 02/12/2025 12:40:19 dmdskmgr.dll
03/10/2025 17:25:43 08/12/2025 18:35:27 docprop.dll
03/10/2025 17:25:43 08/12/2025 18:37:17 WiredNetworkCSP.dll
03/10/2025 17:25:43 08/12/2025 18:35:28 dplcsp.dll
03/10/2025 17:25:44 10/12/2025 21:56:22 dskquota.dll
03/10/2025 17:25:44 08/12/2025 18:35:29 dskquoui.dll
03/10/2025 17:25:44 10/12/2025 21:50:59 DXP.dll
03/10/2025 17:25:44 08/12/2025 18:35:29 DxpTaskSync.dll
03/10/2025 17:25:45 10/12/2025 10:41:25 efssvc.dll
03/10/2025 17:25:45 10/12/2025 21:51:25 EhStorAPI.dll
03/10/2025 17:25:46 08/12/2025 18:35:30 EnterpriseAppMgmtClient.dll
03/10/2025 17:25:46 08/12/2025 18:17:11 WorkfoldersControl.dll
03/10/2025 17:25:46 10/12/2025 21:51:28 WorkFoldersShell.dll
03/10/2025 17:25:46 08/12/2025 18:37:19 WorkFoldersGPExt.dll
03/10/2025 17:25:46 10/12/2025 21:52:59 werconcpl.dll
03/10/2025 17:25:47 10/12/2025 21:50:58 EhStorShell.dll
03/10/2025 17:25:47 02/12/2025 12:40:19 els.dll
03/10/2025 17:25:49 08/12/2025 18:35:32 fdPnp.dll
03/10/2025 17:25:49 10/12/2025 11:25:37 fhcfg.dll
03/10/2025 17:25:49 10/12/2025 10:41:25 fhsvc.dll
03/10/2025 17:25:49 08/12/2025 18:37:06 uReFSv1.dll
03/10/2025 17:25:50 02/12/2025 10:35:09 FirewallUX.dll
03/10/2025 17:25:50 10/12/2025 14:20:08 fmifs.dll
03/10/2025 17:25:50 08/12/2025 18:35:34 fms.dll
03/10/2025 17:25:51 08/12/2025 18:35:08 adrclient.dll
03/10/2025 17:25:51 08/12/2025 18:37:00 srmclient.dll
03/10/2025 17:25:51 08/12/2025 18:37:00 srmstormod.dll
03/10/2025 17:25:51 08/12/2025 18:37:00 srmscan.dll
03/10/2025 17:25:52 08/12/2025 18:35:21 connect.dll
03/10/2025 17:25:52 08/12/2025 18:37:15 Windows.Globalization.PhoneNumberFormatting.dll
03/10/2025 17:25:53 08/12/2025 18:35:10 appmgr.dll
03/10/2025 17:25:53 08/12/2025 18:35:37 HelpPaneProxy.dll
03/10/2025 17:25:53 08/12/2025 18:35:09 apds.dll
03/10/2025 17:25:54 10/12/2025 0:28:41  HNetCfgClient.dll
03/10/2025 17:25:54 08/12/2025 18:35:43 itircl.dll
03/10/2025 17:25:54 08/12/2025 18:35:39 httpprxc.dll
03/10/2025 17:25:54 08/12/2025 18:35:41 iedkcs32.dll
03/10/2025 17:25:55 08/12/2025 18:35:41 iepeers.dll
03/10/2025 17:25:55 08/12/2025 18:35:29 dxtmsft.dll
03/10/2025 17:25:55 08/12/2025 18:35:29 dxtrans.dll
03/10/2025 17:25:55 08/12/2025 18:36:37 msfeedsbs.dll
03/10/2025 17:25:55 10/12/2025 0:28:42  msfeeds.dll
03/10/2025 17:25:55 08/12/2025 18:35:30 EdgeManager.dll
03/10/2025 17:25:56 08/12/2025 18:35:41 imgutil.dll
03/10/2025 17:25:56 10/12/2025 11:24:18 occache.dll
03/10/2025 17:25:57 10/12/2025 21:51:28 webcheck.dll
03/10/2025 17:25:57 08/12/2025 18:36:52 pngfilt.dll
03/10/2025 17:26:00 10/12/2025 21:50:59 imapi2.dll
03/10/2025 17:26:00 08/12/2025 18:35:41 imapi2fs.dll
03/10/2025 17:26:02 10/12/2025 11:25:19 MTFFuzzyDS.dll
03/10/2025 17:26:05 08/12/2025 18:37:01 TaskFlowDataEngine.dll
03/10/2025 17:26:05 08/12/2025 18:37:15 Windows.Internal.Taskbar.dll
03/10/2025 17:26:05 10/12/2025 21:50:11 tzres.dll
03/10/2025 17:26:05 08/12/2025 18:35:38 hnetcfg.dll
03/10/2025 17:26:06 08/12/2025 18:35:08 adhsvc.dll
03/10/2025 17:26:06 18/11/2025 19:03:52 iscsiexe.dll
03/10/2025 17:26:06 18/11/2025 14:24:36 iscsium.dll
03/10/2025 17:26:06 10/12/2025 10:37:27 iscsicpl.dll
03/10/2025 17:26:08 10/12/2025 21:50:57 AboveLockAppHost.dll
03/10/2025 17:26:11 08/12/2025 18:36:26 MapsCSP.dll
03/10/2025 17:26:11 08/12/2025 18:36:26 MapsBtSvc.dll
03/10/2025 17:26:11 08/12/2025 18:36:26 MapGeocoder.dll
03/10/2025 17:26:11 08/12/2025 18:35:35 Geocommon.dll
03/10/2025 17:26:11 08/12/2025 18:35:07 AccountsRt.dll
03/10/2025 17:26:12 08/12/2025 18:35:08 ActiveSyncCsp.dll
03/10/2025 17:26:12 08/12/2025 18:35:08 ActiveSyncProvider.dll
03/10/2025 17:26:12 10/12/2025 21:52:54 APHostService.dll
03/10/2025 17:26:12 08/12/2025 18:35:23 DavSyncProvider.dll
03/10/2025 17:26:12 08/12/2025 18:35:42 InternetMailCsp.dll
03/10/2025 17:26:12 08/12/2025 18:37:00 SyncProxy.dll
03/10/2025 17:26:12 10/12/2025 21:52:54 syncutil.dll
03/10/2025 17:26:14 08/12/2025 18:36:31 mftranscode.dll
03/10/2025 17:26:15 08/12/2025 18:37:19 wmpeffects.dll
03/10/2025 17:26:15 30/10/2025 11:25:28 mfc42.dll
03/10/2025 17:26:16 10/12/2025 10:41:42 mfc42u.dll
03/10/2025 17:26:16 08/12/2025 18:36:31 mfds.dll
03/10/2025 17:26:16 08/12/2025 18:36:31 mfdvdec.dll
03/10/2025 17:26:17 08/12/2025 18:36:31 mfnetcore.dll
03/10/2025 17:26:17 08/12/2025 18:36:31 mfnetsrc.dll
03/10/2025 17:26:18 08/12/2025 18:36:31 mfvdsp.dll
03/10/2025 17:26:19 08/12/2025 18:36:48 odbccp32.dll
03/10/2025 17:26:19 08/12/2025 18:35:19 cic.dll
03/10/2025 17:26:20 10/12/2025 11:25:04 mmcbase.dll
03/10/2025 17:26:20 02/12/2025 12:40:22 mmcshext.dll
03/10/2025 17:26:21 10/12/2025 0:28:49  SensorsClassExtension.dll
03/10/2025 17:26:21 10/12/2025 21:51:03 microsoft-windows-mptf-events.dll
03/10/2025 17:26:22 08/12/2025 18:36:44 MSVideoDSP.dll
03/10/2025 17:26:23 09/12/2025 8:56:42  mydocs.dll
03/10/2025 17:26:23 10/12/2025 21:50:58 ncryptsslp.dll
03/10/2025 17:26:23 02/12/2025 12:40:31 netcfgx.dll
03/10/2025 17:26:24 10/12/2025 10:41:25 NcaSvc.dll
03/10/2025 17:26:24 08/12/2025 18:35:42 ipsecsnp.dll
03/10/2025 17:26:24 08/12/2025 18:35:42 ipsmsnap.dll
03/10/2025 17:26:25 18/11/2025 19:03:52 IPSECSVC.DLL
03/10/2025 17:26:25 10/12/2025 13:43:10 netcenter.dll
03/10/2025 17:26:25 08/12/2025 18:36:46 ndfhcdiscovery.dll
03/10/2025 17:26:25 08/12/2025 18:36:46 ndfetw.dll
03/10/2025 17:26:25 08/12/2025 18:36:46 netdiagfx.dll
03/10/2025 17:26:25 10/12/2025 21:50:55 networkexplorer.dll
03/10/2025 17:26:25 10/12/2025 0:28:50  Windows.Networking.BackgroundTransfer.BackgroundManagerPolicy.dll
03/10/2025 17:26:25 08/12/2025 18:35:23 DaOtpCredentialProvider.dll
03/10/2025 17:26:25 08/12/2025 18:35:40 iasdatastore.dll
03/10/2025 17:26:25 08/12/2025 18:35:40 iasads.dll
03/10/2025 17:26:25 08/12/2025 18:35:40 iasrecst.dll
03/10/2025 17:26:25 08/12/2025 18:36:57 sdohlp.dll
03/10/2025 17:26:25 08/12/2025 18:35:40 IasMigPlugin.dll
03/10/2025 17:26:25 08/12/2025 18:35:40 iassdo.dll
03/10/2025 17:26:25 08/12/2025 18:35:40 iasrad.dll
03/10/2025 17:26:25 08/12/2025 18:36:47 nlmgp.dll
03/10/2025 17:26:26 08/12/2025 18:37:21 xmlprovi.dll
03/10/2025 17:26:26 10/12/2025 13:36:35 NetSetupShim.dll
03/10/2025 17:26:26 08/12/2025 18:36:48 nshhttp.dll
03/10/2025 17:26:26 08/12/2025 18:36:48 objsel.dll
03/10/2025 17:26:26 10/12/2025 21:56:23 officecsp.dll
03/10/2025 17:26:27 10/12/2025 21:50:59 cscobj.dll
03/10/2025 17:26:27 10/12/2025 21:51:06 OmaDmAgent.dll
03/10/2025 17:26:30 10/12/2025 11:25:30 SSShim.dll
03/10/2025 17:26:31 10/12/2025 21:50:57 PCShellCommonProxyStub.dll
03/10/2025 17:26:32 08/12/2025 18:36:51 photowiz.dll
03/10/2025 17:26:33 08/12/2025 18:36:51 playlistfolder.dll
03/10/2025 17:26:33 08/12/2025 18:36:51 PlayToStatusProvider.dll
03/10/2025 17:26:33 08/12/2025 18:36:55 pwlauncher.dll
03/10/2025 17:26:33 08/12/2025 18:36:51 ploptin.dll
03/10/2025 17:26:33 08/12/2025 18:36:52 printticketvalidation.dll
03/10/2025 17:26:33 08/12/2025 18:36:35 ms3dthumbnailprovider.dll
03/10/2025 17:26:34 10/12/2025 11:26:26 findnetprinters.dll
03/10/2025 17:26:34 10/12/2025 0:28:53  AppMon.dll
03/10/2025 17:26:34 10/12/2025 14:17:01 compstui.dll
03/10/2025 17:26:34 08/12/2025 18:36:55 puiobj.dll
03/10/2025 17:26:34 09/12/2025 8:42:12  ntprint.dll
03/10/2025 17:26:35 08/12/2025 18:36:52 PrintPlatformConfig.dll
03/10/2025 17:26:35 08/12/2025 18:36:52 prncache.dll
03/10/2025 17:26:36 30/11/2025 18:25:23 PrinterCleanupTask.dll
03/10/2025 17:26:36 08/12/2025 18:36:52 PrintNotification.dll
03/10/2025 17:26:36 08/12/2025 18:35:36 gpprnext.dll
03/10/2025 17:26:36 10/12/2025 11:24:10 tcpmib.dll
03/10/2025 17:26:36 08/12/2025 18:37:15 Windows.Devices.Printers.Extensions.dll
03/10/2025 17:26:37 10/11/2025 18:25:07 WSDPrintProxy.DLL
03/10/2025 17:26:37 08/12/2025 18:37:21 XPSSHHDR.dll
03/10/2025 17:26:37 08/12/2025 18:37:15 Windows.Graphics.Printing.3D.dll
03/10/2025 17:26:37 08/12/2025 18:35:15 BarcodeProvisioningPlugin.dll
03/10/2025 17:26:37 08/12/2025 18:36:47 NFCProvisioningPlugin.dll
03/10/2025 17:26:38 08/12/2025 18:36:55 qedit.dll
03/10/2025 17:26:38 08/12/2025 18:36:55 rasdiag.dll
03/10/2025 17:26:40 10/12/2025 14:17:04 msrdc.dll
03/10/2025 17:26:40 08/12/2025 18:35:20 CleanPCCSP.dll
03/10/2025 17:26:40 08/12/2025 18:36:56 RegCtrl.dll
03/10/2025 17:26:40 08/12/2025 18:36:39 msrahc.dll
03/10/2025 17:26:40 08/12/2025 18:36:56 rdpnanoTransport.dll
03/10/2025 17:26:40 10/12/2025 21:51:09 Windows.System.Profile.RetailInfo.dll
03/10/2025 17:26:41 10/12/2025 21:52:04 riched20.dll
03/10/2025 17:26:41 08/12/2025 18:37:17 WinOpcIrmProtector.dll
03/10/2025 17:26:41 08/12/2025 18:37:17 winipcfile.dll
03/10/2025 17:26:41 08/12/2025 18:36:57 RotMgr.dll
03/10/2025 17:26:43 08/12/2025 18:37:15 Windows.Media.Editing.dll
03/10/2025 17:26:44 08/12/2025 18:36:57 sdshext.dll
03/10/2025 17:26:44 08/12/2025 18:37:11 wiascanprofiles.dll
03/10/2025 17:26:44 10/12/2025 13:43:22 scrobj.dll
03/10/2025 17:26:45 07/11/2025 3:34:10  secfw_AuthenticAMD.dll
03/10/2025 17:26:45 12/11/2025 14:11:05 secfw_GenuineIntel.dll
03/10/2025 17:26:47 08/12/2025 18:35:16 bdeui.dll
03/10/2025 17:26:49 10/12/2025 0:28:56  NgcCtnrGidsHandler.dll
03/10/2025 17:26:50 06/11/2025 13:11:26 secproc_isv.dll
03/10/2025 17:26:50 08/12/2025 18:36:58 secproc.dll
03/10/2025 17:26:52 10/12/2025 0:28:57  VaultCDS.dll
03/10/2025 17:26:52 08/12/2025 18:36:56 RMSRoamingSecurity.dll
03/10/2025 17:26:52 08/12/2025 18:36:56 RoamingSecurity.dll
03/10/2025 17:26:52 08/12/2025 18:37:07 VaultRoaming.dll
03/10/2025 17:26:52 10/12/2025 21:50:54 Sens.dll
03/10/2025 17:26:54 08/12/2025 18:37:16 Windows.SharedPC.CredentialProvider.dll
03/10/2025 17:26:54 10/12/2025 0:28:57  comctl32.dll
03/10/2025 17:26:59 08/12/2025 18:36:59 shunimpl.dll
03/10/2025 17:26:59 10/12/2025 10:41:42 signdrv.dll
03/10/2025 17:26:59 08/12/2025 18:36:59 SmartCardSimulator.dll
03/10/2025 17:26:59 08/12/2025 18:35:15 basecsp.dll
03/10/2025 17:26:59 08/12/2025 18:37:05 tpmvsc.dll
03/10/2025 17:27:00 10/12/2025 21:51:12 smartscreenps.dll
03/10/2025 17:27:00 08/12/2025 18:36:59 SMBHelperClass.dll
03/10/2025 17:27:00 08/12/2025 18:37:16 Windows.UI.Input.Inking.Analysis.dll
03/10/2025 17:27:00 05/12/2025 12:48:24 SmiEngine.dll
03/10/2025 17:27:02 10/12/2025 11:37:35 srumapi.dll
03/10/2025 17:27:02 08/12/2025 18:35:10 appsruprov.dll
03/10/2025 17:27:04 10/12/2025 10:35:51 storewuauth.dll
03/10/2025 17:27:04 08/12/2025 18:36:57 sbe.dll
03/10/2025 17:27:05 10/12/2025 10:41:25 SystemEventsBrokerServer.dll
03/10/2025 17:27:06 10/12/2025 11:36:31 srhelper.dll
03/10/2025 17:27:06 10/12/2025 11:36:30 srcore.dll
03/10/2025 17:27:06 08/12/2025 18:37:00 srrstr.dll
03/10/2025 17:27:09 10/12/2025 11:24:10 SystemSettingsProxyClientDVCPlugin.dll
03/10/2025 17:27:10 08/12/2025 18:35:42 InkEd.dll
03/10/2025 17:27:10 08/12/2025 18:37:01 TabbtnEx.dll
03/10/2025 17:27:10 08/12/2025 18:37:01 tapi32.dll
03/10/2025 17:27:11 10/12/2025 11:02:47 tapi3.dll
03/10/2025 17:27:11 08/12/2025 18:37:10 wavemsp.dll
03/10/2025 17:27:11 08/12/2025 18:37:01 tapilua.dll
03/10/2025 17:27:11 18/11/2025 10:59:29 tapiperf.dll
03/10/2025 17:27:11 08/12/2025 18:37:01 TapiSysprep.dll
03/10/2025 17:27:11 08/12/2025 18:37:01 TapiMigPlugin.dll
03/10/2025 17:27:11 10/12/2025 21:50:09 taskschd.dll
03/10/2025 17:27:12 08/12/2025 18:37:02 termmgr.dll
03/10/2025 17:27:12 18/11/2025 18:57:53 rdp4vs.dll
03/10/2025 17:27:12 10/12/2025 13:43:18 cfgbkend.dll
03/10/2025 17:27:13 08/12/2025 18:37:05 tssrvlic.dll
03/10/2025 17:27:13 08/12/2025 18:36:24 lsmproxy.dll
03/10/2025 17:27:14 08/12/2025 18:36:55 RADCUI.dll
03/10/2025 17:27:14 08/12/2025 18:37:05 TSWorkspace.dll
03/10/2025 17:27:14 08/12/2025 18:37:17 wkspbrokerAx.dll
03/10/2025 17:27:15 08/12/2025 18:36:41 msTextPrediction.dll
03/10/2025 17:27:16 08/12/2025 18:37:04 TieringEngineProxy.dll
03/10/2025 17:27:16 08/12/2025 18:37:05 ttdloader.dll
03/10/2025 17:27:16 08/12/2025 18:37:05 ttdrecord.dll
03/10/2025 17:27:16 08/12/2025 18:37:05 ttdrecordcpu.dll
03/10/2025 17:27:20 30/10/2025 11:25:43 Windows.UI.Shell.dll
03/10/2025 17:27:23 10/12/2025 21:56:25 updatecsp.dll
03/10/2025 17:27:23 10/12/2025 10:35:51 upshared.dll
03/10/2025 17:27:24 08/12/2025 18:37:06 UIEApi.dll
03/10/2025 17:27:24 08/12/2025 18:37:06 udhisapi.dll
03/10/2025 17:27:24 22/11/2025 17:48:03 CallHistoryClient.dll
03/10/2025 17:27:24 08/12/2025 18:35:18 cemapi.dll
03/10/2025 17:27:25 08/12/2025 18:35:22 ContactApis.dll
03/10/2025 17:27:25 08/12/2025 18:37:07 VCardParser.dll
03/10/2025 17:27:25 10/12/2025 11:24:42 ExSMime.dll
03/10/2025 17:27:26 08/12/2025 18:35:15 avifil32.dll
03/10/2025 17:27:26 10/12/2025 21:51:12 virtdisk.dll
03/10/2025 17:27:27 08/12/2025 18:36:43 MSVidCtl.dll
03/10/2025 17:27:27 18/11/2025 14:24:36 vdsbas.dll
03/10/2025 17:27:27 18/11/2025 14:24:36 vdsdyn.dll
03/10/2025 17:27:27 18/11/2025 14:24:36 vdsvd.dll
03/10/2025 17:27:27 08/12/2025 18:35:31 eventcls.dll
03/10/2025 17:27:27 10/12/2025 10:41:25 swprv.dll
03/10/2025 17:27:27 10/12/2025 14:19:29 WaaSMedicSvc.dll
03/10/2025 17:27:27 10/12/2025 21:50:11 WaaSMedicPS.dll
03/10/2025 17:27:27 10/12/2025 14:19:31 Windows.Internal.WaaSMedicDocked.dll
03/10/2025 17:27:27 08/12/2025 18:35:19 CfgSPPolicy.dll
03/10/2025 17:27:27 08/12/2025 18:35:22 CspProxy.dll
03/10/2025 17:27:28 10/12/2025 21:51:36 WsmAuto.dll
03/10/2025 17:27:28 10/12/2025 21:50:15 Windows.Web.dll
03/10/2025 17:27:28 08/12/2025 18:35:34 fphc.dll
03/10/2025 17:27:28 08/12/2025 18:37:11 whhelper.dll
03/10/2025 17:27:28 08/12/2025 18:37:11 wiaaut.dll
03/10/2025 17:27:29 10/12/2025 21:50:55 sti.dll
03/10/2025 17:27:29 10/12/2025 10:41:26 wiarpc.dll
03/10/2025 17:27:29 08/12/2025 18:37:12 wiatrace.dll
03/10/2025 17:27:29 08/12/2025 18:37:11 wiadefui.dll
03/10/2025 17:27:30 08/12/2025 18:37:11 WiaExtensionHost64.dll
03/10/2025 17:27:30 08/12/2025 18:37:12 wiashext.dll
03/10/2025 17:27:30 08/12/2025 18:37:11 wiadss.dll
03/10/2025 17:27:30 09/12/2025 23:34:11 Windows.Devices.Scanners.dll
03/10/2025 17:27:30 10/12/2025 14:19:27 wups.dll
03/10/2025 17:27:31 08/12/2025 18:37:20 wudriver.dll
03/10/2025 17:27:31 08/12/2025 18:37:17 winethc.dll
03/10/2025 17:27:31 10/12/2025 21:51:10 Windows.System.Diagnostics.dll
03/10/2025 17:27:32 08/12/2025 18:35:42 InkObjCore.dll
03/10/2025 17:27:32 08/12/2025 18:37:17 wlandlg.dll
03/10/2025 17:27:32 08/12/2025 18:37:17 wlanpref.dll
03/10/2025 17:27:32 10/12/2025 21:50:59 WlanRadioManager.dll
03/10/2025 17:27:34 08/12/2025 18:37:19 wmvdspa.dll
03/10/2025 17:27:34 10/12/2025 11:24:40 wow64.dll
03/10/2025 17:27:34 08/12/2025 18:36:44 mswmdm.dll
03/10/2025 17:27:34 08/12/2025 18:37:18 wmdmlog.dll
03/10/2025 17:27:35 10/12/2025 21:50:59 PortableDeviceApi.dll
03/10/2025 17:27:35 08/12/2025 18:19:26 PortableDeviceConnectApi.dll
03/10/2025 17:27:35 08/12/2025 18:19:27 PortableDeviceClassExtension.dll
03/10/2025 17:27:35 10/12/2025 21:50:59 PortableDeviceTypes.dll
03/10/2025 17:27:35 10/12/2025 21:50:59 WPDShServiceObj.dll
03/10/2025 17:27:35 30/10/2025 11:25:35 PortableDeviceStatus.dll
03/10/2025 17:27:35 08/12/2025 18:37:20 WPDSp.dll
03/10/2025 17:27:35 10/12/2025 11:25:24 WsdProviderUtil.dll
03/10/2025 17:27:35 08/12/2025 18:37:20 WSDScanProxy.dll
03/10/2025 17:27:35 08/12/2025 18:35:22 CspCellularSettings.dll
03/10/2025 17:27:36 10/12/2025 0:29:07  WwanRadioManager.dll
03/10/2025 17:27:36 18/11/2025 19:03:11 XboxGipRadioManager.dll
03/10/2025 17:27:36 08/12/2025 18:37:21 XpsFilt.dll
03/10/2025 17:27:36 08/12/2025 18:37:21 xwizards.dll
03/10/2025 17:27:38 08/12/2025 18:35:10 AppIdPolicyEngineApi.dll
03/10/2025 17:27:41 10/12/2025 11:24:38 WfHC.dll
03/10/2025 17:27:41 10/12/2025 11:24:35 icfupgd.dll
03/10/2025 17:27:41 10/12/2025 13:48:04 FirewallControlPanel.dll
03/10/2025 17:27:42 08/12/2025 18:37:06 umb.dll
03/10/2025 17:27:53 08/12/2025 18:37:16 Windows.Media.FaceAnalysis.dll
03/10/2025 17:27:53 10/12/2025 10:41:26 XboxNetApiSvc.dll
03/10/2025 17:27:53 08/12/2025 18:36:58 SecurityHealthSSO.dll
03/10/2025 17:27:55 08/12/2025 18:36:52 PresentationHostProxy.dll
04/10/2025 20:51:48 23/10/2025 11:25:27 VsGraphicsHelper.dll
15/10/2025 13:28:25 10/12/2025 0:28:28  vmickrnl.dll
22/10/2025 12:53:26 10/12/2025 11:26:27 DxToolsReportGenerator.dll
22/10/2025 12:53:26 10/12/2025 11:24:42 VsGraphicsProxyStub.dll
22/10/2025 12:53:31 08/12/2025 18:35:26 DirectML.Debug.dll
22/10/2025 12:53:31 10/12/2025 21:52:59 DXGIDebug.dll
22/10/2025 12:53:31 08/12/2025 18:35:29 DXToolsReporting.dll
22/10/2025 12:53:31 08/12/2025 18:36:51 perf_gputiming.dll
22/10/2025 12:56:19 08/12/2025 18:35:29 DXToolsMonitor.dll
22/10/2025 12:57:19 04/12/2025 11:24:10 aspnet_counters.dll
22/10/2025 12:57:20 10/12/2025 21:50:55 ucrtbase_clr0400.dll
22/10/2025 12:57:22 10/12/2025 21:51:08 msvcp140_clr0400.dll
22/10/2025 12:57:24 30/10/2025 11:25:32 msvcr100_clr0400.dll
22/10/2025 12:57:25 10/12/2025 21:50:55 vcruntime140_clr0400.dll
22/10/2025 12:57:25 10/12/2025 21:50:55 vcruntime140_1_clr0400.dll
23/10/2025 10:59:35 22/11/2025 17:35:44 WpdMtp.dll
23/10/2025 10:59:35 22/11/2025 17:35:45 WpdMtpUS.dll
23/10/2025 10:59:35 10/12/2025 0:28:28  VmCrashDump.dll
23/10/2025 10:59:39 08/12/2025 18:35:07 6bea57fb-8dfb-4177-9ae8-42e8b3529933_RuntimeDeviceInstall.dll
23/10/2025 10:59:39 18/11/2025 18:51:58 SFAPE.dll
23/10/2025 10:59:39 10/12/2025 0:28:30  SFAPM.dll
23/10/2025 10:59:39 10/12/2025 10:41:26 webthreatdefsvc.dll
23/10/2025 10:59:39 10/12/2025 21:50:57 actxprxy.dll
23/10/2025 10:59:40 08/12/2025 18:35:10 AppVClientPS.dll
23/10/2025 10:59:40 08/12/2025 18:35:12 AppVSentinel.dll
23/10/2025 10:59:40 08/12/2025 18:35:13 AppVTerminator.dll
23/10/2025 10:59:41 10/12/2025 21:51:36 bitsperf.dll
23/10/2025 10:59:42 08/12/2025 18:35:16 BluetoothOppPushClient.dll
23/10/2025 10:59:42 08/12/2025 18:35:17 cabapi.dll
23/10/2025 10:59:42 10/12/2025 21:50:54 camext.dll
23/10/2025 10:59:43 10/12/2025 21:50:11 wincorlib.dll
23/10/2025 10:59:44 08/12/2025 18:35:22 CoreShell.dll
23/10/2025 10:59:45 08/12/2025 18:36:34 Midi2.BS2UMPTransform.dll
23/10/2025 10:59:45 08/12/2025 18:36:34 Midi2.DiagnosticsTransport.dll
23/10/2025 10:59:45 08/12/2025 18:36:34 Midi2.SchedulerTransform.dll
23/10/2025 10:59:45 08/12/2025 18:36:34 Midi2.UmpProtocolDownscalerTransform.dll
23/10/2025 10:59:45 08/12/2025 18:37:15 Windows.Devices.SmartCards.Phone.dll
23/10/2025 10:59:45 10/12/2025 21:50:11 directmanipulation.dll
23/10/2025 10:59:46 08/12/2025 18:36:55 qdvd.dll
23/10/2025 10:59:47 08/12/2025 18:35:26 directsr.dll
23/10/2025 10:59:47 10/12/2025 10:41:25 KeyboardFilterSvc.dll
23/10/2025 10:59:48 08/12/2025 18:36:37 MSFlacEncoder.dll
23/10/2025 10:59:48 08/12/2025 18:36:48 ntfsres.dll
23/10/2025 10:59:49 08/12/2025 18:35:39 HvsiSettingsProvider.dll
23/10/2025 10:59:51 08/12/2025 18:35:41 iemigplugin.dll
23/10/2025 10:59:51 08/12/2025 18:35:25 DevicePairingExperienceMEM.dll
23/10/2025 10:59:53 08/12/2025 18:35:42 INETRES.dll
23/10/2025 10:59:53 08/12/2025 18:36:38 msoert2.dll
23/10/2025 10:59:53 10/12/2025 21:51:27 Windows.Management.EnrollmentStatusTracking.ConfigProvider.dll
23/10/2025 10:59:53 08/12/2025 18:35:15 autopilot.dll
23/10/2025 10:59:53 10/12/2025 21:50:58 Windows.Management.InprocObjects.dll
23/10/2025 10:59:53 10/12/2025 21:56:21 Windows.Management.ModernDeployment.ConfigProviders.dll
23/10/2025 10:59:53 10/12/2025 10:41:26 Windows.Management.Service.dll
23/10/2025 10:59:54 08/12/2025 18:35:16 BingMaps.dll
23/10/2025 10:59:56 10/12/2025 11:26:13 mbsmsapi.dll
23/10/2025 10:59:56 08/12/2025 18:36:36 msaudite.dll
23/10/2025 10:59:56 10/12/2025 22:01:23 adtschema.dll
23/10/2025 10:59:56 10/12/2025 0:09:28  msobjs.dll
23/10/2025 10:59:58 10/12/2025 10:41:26 NPSM.dll
23/10/2025 10:59:59 08/12/2025 18:36:48 ocsetapi.dll
23/10/2025 11:00:04 08/12/2025 18:37:16 Windows.Payments.dll
23/10/2025 11:00:04 10/12/2025 11:26:11 pcrpf.dll
23/10/2025 11:00:06 08/12/2025 18:36:51 plutonfw_AuthenticAMD.dll
23/10/2025 11:00:07 08/12/2025 18:35:32 fdprint.dll
23/10/2025 11:00:08 08/12/2025 18:36:24 localui.dll
23/10/2025 11:00:14 08/12/2025 18:36:55 rasmontr.dll
23/10/2025 11:00:19 10/12/2025 11:25:04 scavengeui.dll
23/10/2025 11:00:25 10/12/2025 0:28:57  SensorsNativeApi.dll
23/10/2025 11:00:25 08/12/2025 18:37:06 unattend.dll
23/10/2025 11:00:28 10/12/2025 21:53:06 DesktopSwitcherDataModel.dll
23/10/2025 11:00:28 10/12/2025 21:50:10 microsoft-windows-system-events.dll
23/10/2025 11:00:29 08/12/2025 18:36:56 RdpShellLoader.dll
23/10/2025 11:00:29 08/12/2025 18:37:05 TSErrRedir.dll
23/10/2025 11:00:29 08/12/2025 18:36:56 rdvvmtransport.dll
23/10/2025 11:00:30 08/12/2025 18:37:04 TpmCertResources.dll
23/10/2025 11:00:31 08/12/2025 18:37:16 Windows.UI.Storage.dll
23/10/2025 11:00:31 10/12/2025 21:56:31 utcapi.dll
23/10/2025 11:00:31 10/12/2025 21:51:36 ssdpapi.dll
23/10/2025 11:00:32 10/12/2025 10:35:51 wups2.dll
23/10/2025 11:00:33 10/12/2025 11:24:40 wow64win.dll
23/10/2025 11:00:33 08/12/2025 18:35:19 cewmdm.dll
23/10/2025 11:00:33 08/12/2025 18:36:52 PortableDeviceWiaCompat.dll
23/10/2025 11:00:39 10/12/2025 11:24:16 mssecuser.dll
23/10/2025 11:00:39 08/12/2025 18:36:40 mssecwfpu.dll
29/10/2025 9:56:10  10/12/2025 21:50:59 srchadmin.dll
29/10/2025 9:56:10  08/12/2025 18:35:37 HidCfu.dll
29/10/2025 9:56:12  10/12/2025 13:45:18 MsApoFxProxy.dll
29/10/2025 9:56:12  08/12/2025 18:37:01 SysFxUI.dll
29/10/2025 9:56:12  10/12/2025 14:06:12 WMALFXGFXDSP.dll
29/10/2025 9:56:12  10/12/2025 11:25:07 vmbuspipe.dll
29/10/2025 9:56:12  10/12/2025 13:43:19 vmbuspiper.dll
29/10/2025 9:56:12  10/12/2025 10:37:27 miguiresource.dll
29/10/2025 9:56:12  10/12/2025 11:24:38 fdSSDP.dll
29/10/2025 9:56:12  10/12/2025 0:28:28  fdWSD.dll
29/10/2025 9:56:12  10/12/2025 21:55:52 fundisc.dll
29/10/2025 9:56:12  27/11/2025 12:54:00 vmstaging.dll
29/10/2025 9:56:12  10/12/2025 0:28:28  computecore.dll
29/10/2025 9:56:12  18/11/2025 18:55:10 vmcompute.dll
29/10/2025 9:56:12  10/12/2025 10:41:26 icsvc.dll
29/10/2025 9:56:12  10/12/2025 0:28:28  computestorage.dll
29/10/2025 9:56:12  10/12/2025 10:41:26 icsvcext.dll
29/10/2025 9:56:12  06/11/2025 13:11:42 vmsifcore.dll
29/10/2025 9:56:12  10/12/2025 0:28:28  VmDataStore.dll
29/10/2025 9:56:12  10/12/2025 13:43:21 vmsif.dll
29/10/2025 9:56:12  10/12/2025 13:43:19 vmvirtio.dll
29/10/2025 9:56:12  10/12/2025 13:43:19 vmdynmem.dll
29/10/2025 9:56:12  10/12/2025 11:24:57 vmemulateddevices.dll
29/10/2025 9:56:12  29/10/2025 11:54:04 WinHvEmulation.dll
29/10/2025 9:56:12  10/12/2025 13:43:19 vmsynthstor.dll
29/10/2025 9:56:12  29/10/2025 13:05:58 vmicvdev.dll
29/10/2025 9:56:12  10/12/2025 13:43:19 vp9fs.dll
29/10/2025 9:56:12  10/12/2025 0:28:28  vmuidevices.dll
29/10/2025 9:56:12  09/12/2025 10:25:35 WinHvPlatform.dll
29/10/2025 9:56:12  29/10/2025 11:54:01 Microsoft.LocalUserImageProvider.dll
29/10/2025 9:56:12  09/12/2025 9:51:40  archiveint.dll
29/10/2025 9:56:12  29/10/2025 11:54:00 BootCriticalUpdatePlugin.dll
29/10/2025 9:56:12  10/12/2025 11:19:52 MtcModel.dll
29/10/2025 9:56:12  10/12/2025 21:56:15 pkeyhelper.dll
29/10/2025 9:56:12  10/12/2025 21:51:05 LicensingCSP.dll
29/10/2025 9:56:12  10/12/2025 11:24:17 ConsentExperienceCommon.dll
29/10/2025 9:56:12  18/11/2025 18:52:04 CapabilityAccessManager.Desktop.Storage.dll
29/10/2025 9:56:12  10/12/2025 21:50:46 hvloader.dll
29/10/2025 9:56:12  10/12/2025 21:51:03 hvhostsvc.dll
29/10/2025 9:56:12  29/10/2025 13:05:55 VmEmulatedStorage.dll
29/10/2025 9:56:12  10/12/2025 21:50:57 Windows.UI.Accessibility.dll
29/10/2025 9:56:12  29/10/2025 11:54:03 TransferTargets.dll
29/10/2025 9:56:12  10/12/2025 21:50:57 windows.applicationmodel.datatransfer.dll
29/10/2025 9:56:12  29/10/2025 11:54:01 AssignedAccessCsp.dll
29/10/2025 9:56:12  10/12/2025 21:51:03 bthserv.dll
29/10/2025 9:56:12  10/12/2025 13:08:14 Microsoft.Bluetooth.Proxy.dll
29/10/2025 9:56:12  10/12/2025 21:50:59 BluetoothApis.dll
29/10/2025 9:56:12  10/12/2025 21:50:55 capauthz.dll
29/10/2025 9:56:12  10/12/2025 11:24:23 Microsoft.Bluetooth.Service.dll
29/10/2025 9:56:12  10/12/2025 0:28:30  CapabilityAccessHandlers.dll
29/10/2025 9:56:12  29/10/2025 11:53:59 WwanPrfl.dll
29/10/2025 9:56:12  10/12/2025 14:19:31 SustainabilityService.dll
29/10/2025 9:56:12  10/11/2025 9:39:59  SettingsHandlers_CapabilityAccess.dll
29/10/2025 9:56:12  10/12/2025 11:26:13 cdprt.dll
29/10/2025 9:56:12  10/12/2025 21:50:54 CloudExperienceHostCommon.dll
29/10/2025 9:56:12  10/12/2025 21:50:58 CloudExperienceHostRedirection.dll
29/10/2025 9:56:12  03/11/2025 12:34:03 MicrosoftAccount.TokenProvider.Core.dll
29/10/2025 9:56:12  29/10/2025 11:54:05 CloudExperienceHostUser.dll
29/10/2025 9:56:12  29/10/2025 11:54:04 skci.dll
29/10/2025 9:56:12  18/11/2025 18:54:08 ApplicationControlCSP.dll
29/10/2025 9:56:12  10/12/2025 10:41:26 ConsentUxClient.dll
29/10/2025 9:56:12  10/12/2025 21:50:57 UnifiedConsent.dll
29/10/2025 9:56:12  10/12/2025 10:41:26 Microsoft.Data.UsageAndQualityInsights.dll
29/10/2025 9:56:12  10/12/2025 21:50:11 CoreMessaging.dll
29/10/2025 9:56:12  10/12/2025 21:50:11 directxdatabasehelper.dll
29/10/2025 9:56:12  10/12/2025 21:50:28 DXCore.dll
29/10/2025 9:56:12  10/12/2025 0:28:30  embeddedmodesvcapi.dll
29/10/2025 9:56:12  10/12/2025 10:41:25 embeddedmodesvc.dll
29/10/2025 9:56:12  10/12/2025 14:20:09 GameInput.dll
29/10/2025 9:56:12  29/10/2025 11:54:03 veinterop.dll
29/10/2025 9:56:12  10/12/2025 14:19:03 iumbase.dll
29/10/2025 9:56:12  18/11/2025 18:52:00 iumdll.dll
29/10/2025 9:56:12  29/10/2025 11:54:04 tprtdll.dll
29/10/2025 9:56:12  10/12/2025 21:51:22 ucrtbase_enclave.dll
29/10/2025 9:56:12  10/12/2025 21:51:22 vertdll.dll
29/10/2025 9:56:12  18/11/2025 18:52:00 IumSdk.dll
29/10/2025 9:56:12  29/10/2025 11:53:56 SDFHost.dll
29/10/2025 9:56:12  29/10/2025 11:54:01 LampArray.dll
29/10/2025 9:56:12  10/12/2025 12:51:28 LanguageOverlayServer.dll
29/10/2025 9:56:12  10/12/2025 10:41:25 mcmsvc.dll
29/10/2025 9:56:12  10/12/2025 21:50:11 LanguageOverlayUtil.dll
29/10/2025 9:56:12  10/12/2025 21:51:05 dlnashext.dll
29/10/2025 9:56:12  10/12/2025 0:28:30  FwRemoteSvr.dll
29/10/2025 9:56:12  10/12/2025 21:50:10 netprofm.dll
29/10/2025 9:56:12  10/12/2025 21:50:55 NotificationControllerPS.dll
29/10/2025 9:56:12  10/12/2025 21:50:54 NotificationController.dll
29/10/2025 9:56:12  27/11/2025 12:54:39 PickerPlatform.dll
29/10/2025 9:56:12  10/12/2025 21:50:10 cfgmgr32.dll
29/10/2025 9:56:13  10/12/2025 14:20:05 drvsetup.dll
29/10/2025 9:56:13  29/10/2025 11:53:56 pnpdiag.dll
29/10/2025 9:56:13  10/12/2025 21:50:09 QuickActionsDataModel.dll
29/10/2025 9:56:13  10/12/2025 21:50:54 QuietHours.dll
29/10/2025 9:56:13  29/10/2025 11:53:58 SettingsHandlers_InkingTypingPrivacy.dll
29/10/2025 9:56:13  10/12/2025 21:50:55 ShareHost.dll
29/10/2025 9:56:13  18/11/2025 19:40:07 InputCloudStore.dll
29/10/2025 9:56:13  10/12/2025 10:41:25 tetheringservice.dll
29/10/2025 9:56:13  29/10/2025 11:54:06 SettingsHandlers_SpeechPrivacy.dll
29/10/2025 9:56:13  10/12/2025 21:50:55 TileDataRepository.dll
29/10/2025 9:56:13  10/12/2025 21:50:54 UiaManager.dll
29/10/2025 9:56:13  29/10/2025 11:54:03 Facilitator.dll
29/10/2025 9:56:13  10/12/2025 14:19:29 ProductEnumerator.dll
29/10/2025 9:56:13  27/11/2025 12:53:34 uwfcsp.dll
29/10/2025 9:56:13  18/11/2025 18:52:59 ThreatIntelligence.dll
29/10/2025 9:56:13  29/10/2025 11:53:56 ThreatExperienceManager.dll
29/10/2025 9:56:13  29/10/2025 11:53:56 UdiApiClient.dll
29/10/2025 9:56:13  10/12/2025 21:50:54 ThreatResponseEngine.dll
29/10/2025 9:56:13  10/12/2025 21:50:54 WindowManagement.dll
29/10/2025 9:56:13  10/12/2025 21:50:52 WindowManagementAPI.dll
29/10/2025 9:56:13  10/12/2025 11:25:20 XamlTileRender.dll
29/10/2025 9:56:13  10/12/2025 10:35:55 Microsoft.Bluetooth.UserService.dll
29/10/2025 9:56:13  10/12/2025 12:52:01 AccountHealth.dll
29/10/2025 9:56:13  10/12/2025 21:52:17 deviceaccess.dll
29/10/2025 9:56:13  06/11/2025 13:11:24 StringFeedbackEngine.dll
29/10/2025 9:56:13  29/10/2025 11:53:59 ime_textinputhelpers.dll
29/10/2025 9:56:13  10/12/2025 21:50:28 usermgrcli.dll
29/10/2025 9:56:13  10/12/2025 0:28:31  HrtfApo.dll
29/10/2025 9:56:13  27/11/2025 12:53:54 ssdm.dll
29/10/2025 9:56:13  29/10/2025 11:53:58 VirtualSurroundApo.dll
29/10/2025 9:56:13  10/12/2025 10:41:26 AarSvc.dll
29/10/2025 9:56:13  29/10/2025 11:53:56 agentactivationruntime.dll
29/10/2025 9:56:13  29/10/2025 11:54:02 Windows.ApplicationModel.ConversationalAgent.dll
29/10/2025 9:56:13  29/10/2025 11:54:03 agentactivationruntimewindows.dll
29/10/2025 9:56:13  09/12/2025 11:54:06 accessibilitycpl.dll
29/10/2025 9:56:13  29/10/2025 11:54:03 Windows.AccountsControl.dll
29/10/2025 9:56:13  04/12/2025 11:24:39 aclui.dll
29/10/2025 9:56:13  10/12/2025 21:50:54 ActivationManager.dll
29/10/2025 9:56:13  29/10/2025 11:54:02 adsldp.dll
29/10/2025 9:56:13  09/12/2025 23:33:35 activeds.dll
29/10/2025 9:56:13  09/12/2025 23:33:35 adsnt.dll
29/10/2025 9:56:13  10/12/2025 10:41:25 adpsvc.dll
29/10/2025 9:56:13  10/12/2025 21:51:59 advapi32.dll
29/10/2025 9:56:13  09/12/2025 8:45:07  apisetschema.dll
29/10/2025 9:56:13  10/12/2025 21:50:12 facecredentialprovider.dll
29/10/2025 9:56:13  10/12/2025 0:28:31  ACPBackgroundManagerPolicy.dll
29/10/2025 9:56:13  08/12/2025 18:39:01 AppLockerCSP.dll
29/10/2025 9:56:13  10/12/2025 21:52:16 srpapi.dll
29/10/2025 9:56:13  29/10/2025 11:53:57 apisampling.dll
29/10/2025 9:56:13  29/10/2025 11:53:58 uireng.dll
29/10/2025 9:56:13  10/12/2025 13:53:17 aeinv.dll
29/10/2025 9:56:13  10/12/2025 10:41:25 InventorySvc.dll
29/10/2025 9:56:13  10/12/2025 21:50:11 apphelp.dll
29/10/2025 9:56:13  10/12/2025 21:50:28 aepic.dll
29/10/2025 9:56:13  10/12/2025 21:51:59 devinv.dll
29/10/2025 9:56:13  29/10/2025 11:53:59 installmon.dll
29/10/2025 9:56:13  08/12/2025 18:39:02 aemarebackup.dll
29/10/2025 9:56:13  09/12/2025 8:42:24  AcLayers.dll
29/10/2025 9:56:13  03/12/2025 11:59:47 AcGenral.dll
29/10/2025 9:56:13  29/10/2025 11:54:04 AcSpecfc.dll
29/10/2025 9:56:13  10/12/2025 21:51:14 pcadm.dll
29/10/2025 9:56:13  10/12/2025 21:51:14 pcacli.dll
29/10/2025 9:56:13  10/12/2025 21:56:09 pcasvc.dll
29/10/2025 9:56:13  17/11/2025 23:29:08 pcaui.dll
29/10/2025 9:56:13  10/12/2025 13:53:17 invagent.dll
29/10/2025 9:56:14  10/12/2025 21:52:16 ApiSetHost.AppExecutionAlias.dll
29/10/2025 9:56:14  10/12/2025 21:57:13 acppage.dll
29/10/2025 9:56:14  29/10/2025 11:54:01 win32appinventorycsp.dll
29/10/2025 9:56:14  10/12/2025 11:24:36 ShareTargets.dll
29/10/2025 9:56:14  10/12/2025 14:19:26 Windows.ApplicationModel.LockScreen.dll
29/10/2025 9:56:14  10/12/2025 21:50:55 daxexec.dll
29/10/2025 9:56:14  29/10/2025 11:54:00 ApplicationTargetedFeatureDatabase.dll
29/10/2025 9:56:14  10/12/2025 11:23:55 AppListBackupLauncher.dll
29/10/2025 9:56:14  29/10/2025 11:53:58 AppVEntSubsystemController.dll
29/10/2025 9:56:14  29/10/2025 11:53:58 AppVEntVirtualization.dll
29/10/2025 9:56:14  29/10/2025 11:54:01 AppVEntSubsystems64.dll
29/10/2025 9:56:14  27/11/2025 12:53:53 Microsoft.Uev.CommonBridge.dll
29/10/2025 9:56:14  29/10/2025 11:54:02 Microsoft.Uev.ModernAppAgent.dll
29/10/2025 9:56:14  29/10/2025 11:54:06 Microsoft.Uev.PrinterCustomActions.dll
29/10/2025 9:56:14  29/10/2025 11:54:04 Microsoft.Uev.AppAgent.dll
29/10/2025 9:56:14  29/10/2025 11:54:00 Microsoft.Uev.Office2013CustomActions.dll
29/10/2025 9:56:14  10/12/2025 21:50:55 AppReadiness.dll
29/10/2025 9:56:14  10/12/2025 21:50:55 AppResolver.dll
29/10/2025 9:56:14  10/12/2025 21:50:55 AppxAllUserStore.dll
29/10/2025 9:56:14  10/12/2025 13:45:44 AppXApplicabilityBlob.dll
29/10/2025 9:56:14  10/12/2025 21:50:54 AppXDeploymentClient.dll
29/10/2025 9:56:14  10/12/2025 21:52:16 AppXDeploymentExtensions.desktop.dll
29/10/2025 9:56:14  29/10/2025 11:54:04 RandomAccessStreamDataSource.dll
29/10/2025 9:56:14  10/12/2025 21:50:56 AppXDeploymentExtensions.onecore.dll
29/10/2025 9:56:14  27/11/2025 12:53:28 AppxSysprep.dll
29/10/2025 9:56:14  10/12/2025 21:51:17 AppxSip.dll
29/10/2025 9:56:14  10/12/2025 21:51:22 AssignedAccessRuntime.dll
29/10/2025 9:56:14  10/12/2025 0:28:32  Apx01000.dll
29/10/2025 9:56:14  06/11/2025 13:11:29 AssignedAccessShellProxy.dll
29/10/2025 9:56:14  10/12/2025 10:41:28 AssignedAccessManager.dll
29/10/2025 9:56:14  10/12/2025 10:41:25 assignedaccessmanagersvc.dll
29/10/2025 9:56:14  10/12/2025 10:41:25 AudioEndpointBuilder.dll
29/10/2025 9:56:14  10/12/2025 21:50:58 AudioEng.dll
29/10/2025 9:56:14  10/12/2025 21:57:14 AUDIOKSE.dll
29/10/2025 9:56:14  10/12/2025 10:41:25 audiosrv.dll
29/10/2025 9:56:14  10/12/2025 0:28:32  AudioSrvPolicyManager.dll
29/10/2025 9:56:14  10/12/2025 21:50:11 AudioSes.dll
29/10/2025 9:56:14  29/10/2025 11:53:59 dmloader.dll
29/10/2025 9:56:14  10/12/2025 11:26:25 dmusic.dll
29/10/2025 9:56:14  29/10/2025 11:53:59 dswave.dll
29/10/2025 9:56:14  10/12/2025 10:35:22 dsound.dll
29/10/2025 9:56:14  10/12/2025 22:00:10 msacm32.dll
29/10/2025 9:56:14  10/12/2025 13:45:44 Windows.Media.MediaControl.dll
29/10/2025 9:56:14  10/12/2025 22:00:10 winmmbase.dll
29/10/2025 9:56:14  10/12/2025 21:50:57 SndVolSSO.dll
29/10/2025 9:56:14  10/12/2025 21:50:10 winmm.dll
29/10/2025 9:56:14  10/12/2025 21:50:59 authui.dll
29/10/2025 9:56:14  10/12/2025 21:50:12 SmartcardCredentialProvider.dll
29/10/2025 9:56:14  10/12/2025 21:50:11 AuthExt.dll
29/10/2025 9:56:14  10/12/2025 21:50:28 tzautoupdate.dll
29/10/2025 9:56:14  29/10/2025 11:53:57 mgmtrefreshcredprov.dll
29/10/2025 9:56:14  29/10/2025 11:54:03 fstx.dll
29/10/2025 9:56:14  10/12/2025 14:20:08 basesrv.dll
29/10/2025 9:56:14  29/10/2025 11:53:56 kdnet.dll
29/10/2025 9:56:14  10/12/2025 21:50:11 batmeter.dll
29/10/2025 9:56:14  10/12/2025 10:41:25 AxInstSv.dll
29/10/2025 9:56:14  02/12/2025 11:03:24 bnmanager.dll
29/10/2025 9:56:14  10/12/2025 21:50:11 BCP47mrm.dll
29/10/2025 9:56:14  10/12/2025 21:50:11 BCP47Langs.dll
29/10/2025 9:56:14  10/12/2025 21:50:10 bcrypt.dll
29/10/2025 9:56:14  10/12/2025 21:56:15 bcryptprimitives.dll
29/10/2025 9:56:14  10/12/2025 21:51:36 qmgr.dll
29/10/2025 9:56:14  10/12/2025 10:44:31 bthpanapi.dll
29/10/2025 9:56:15  10/12/2025 11:26:14 BootMenuUX.dll
29/10/2025 9:56:15  27/11/2025 12:54:53 bootux.dll
29/10/2025 9:56:15  10/12/2025 21:50:58 winbrand.dll
29/10/2025 9:56:15  10/12/2025 13:45:44 winsku.dll
29/10/2025 9:56:15  10/12/2025 13:45:49 bisrv.dll
29/10/2025 9:56:15  10/12/2025 21:50:58 biwinrt.dll
29/10/2025 9:56:15  29/10/2025 11:54:05 eShims.dll
29/10/2025 9:56:15  02/12/2025 12:43:11 cabview.dll
29/10/2025 9:56:15  10/12/2025 13:56:05 CaptureService.dll
29/10/2025 9:56:15  29/10/2025 11:53:58 CastLaunch.dll
29/10/2025 9:56:15  10/12/2025 21:50:54 cdp.dll
29/10/2025 9:56:15  10/12/2025 10:41:25 cdpsvc.dll
29/10/2025 9:56:15  10/12/2025 21:50:54 cdpusersvc.dll
29/10/2025 9:56:15  10/12/2025 21:51:01 certca.dll
29/10/2025 9:56:15  29/10/2025 13:05:59 certcli.dll
29/10/2025 9:56:15  10/12/2025 21:50:10 wldp.dll
29/10/2025 9:56:15  29/10/2025 11:54:04 cimfs.dll
29/10/2025 9:56:15  10/12/2025 21:50:57 CBDHSvc.dll
29/10/2025 9:56:15  29/10/2025 11:54:02 CloudDesktopCSP.dll
29/10/2025 9:56:15  06/11/2025 13:11:41 Windows.Internal.Shell.CloudDesktop.TransitionScreen.dll
29/10/2025 9:56:15  29/10/2025 11:54:03 CloudDomainJoinAUG.dll
29/10/2025 9:56:15  29/10/2025 11:53:59 CloudDomainJoinDataModelServer.dll
29/10/2025 9:56:15  09/12/2025 13:11:04 CloudExperienceHost.dll
29/10/2025 9:56:15  10/12/2025 21:50:55 cldapi.dll
29/10/2025 9:56:15  10/12/2025 21:55:54 CloudExperienceHostBroker.dll
29/10/2025 9:56:15  27/11/2025 12:54:32 SettingsHandlers_CloudPC.dll
29/10/2025 9:56:16  10/12/2025 21:50:58 CloudRestoreLauncher.dll
29/10/2025 9:56:16  29/10/2025 13:05:42 Windows.CloudStore.EarlyDownloader.dll
29/10/2025 9:56:16  10/12/2025 21:50:55 Windows.CloudStore.dll
29/10/2025 9:56:16  29/10/2025 11:54:06 cngcredui.dll
29/10/2025 9:56:16  10/12/2025 21:50:55 Windows.CloudStore.Schema.Shell.dll
29/10/2025 9:56:16  08/12/2025 18:17:16 Windows.CloudStore.Schema.DesktopShell.dll
29/10/2025 9:56:16  10/12/2025 0:28:33  CodeIntegrityAggregator.dll
29/10/2025 9:56:16  10/12/2025 21:56:15 combase.dll
29/10/2025 9:56:16  10/12/2025 21:52:16 WinTypes.dll
29/10/2025 9:56:16  10/12/2025 21:50:09 ole32.dll
29/10/2025 9:56:16  10/12/2025 21:50:09 rpcss.dll
29/10/2025 9:56:16  10/12/2025 13:45:45 coml2.dll
29/10/2025 9:56:16  10/12/2025 21:50:59 es.dll
29/10/2025 9:56:16  10/12/2025 21:56:57 clbcatq.dll
29/10/2025 9:56:16  03/12/2025 11:59:41 comsvcs.dll
29/10/2025 9:56:16  18/11/2025 10:59:29 msdtcprx.dll
29/10/2025 9:56:16  29/10/2025 11:54:03 xolehlp.dll
29/10/2025 9:56:16  18/11/2025 10:59:29 msdtcuiu.dll
29/10/2025 9:56:16  03/12/2025 11:59:41 mtxoci.dll
29/10/2025 9:56:16  10/12/2025 0:28:34  msdtckrm.dll
29/10/2025 9:56:16  18/11/2025 10:59:29 mtxclu.dll
29/10/2025 9:56:16  29/10/2025 11:54:06 msdtclog.dll
29/10/2025 9:56:16  29/10/2025 11:54:04 msdtctm.dll
29/10/2025 9:56:16  29/10/2025 11:54:02 clfsw32.dll
29/10/2025 9:56:16  17/11/2025 19:13:40 acmigration.dll
29/10/2025 9:56:16  10/12/2025 21:56:11 appraiser.dll
29/10/2025 9:56:16  10/12/2025 13:53:17 appfootprint.dll
29/10/2025 9:56:16  29/10/2025 11:54:02 Win32CompatibilityAppraiserCSP.dll
29/10/2025 9:56:16  17/11/2025 19:10:31 generaltel.dll
29/10/2025 9:56:16  29/10/2025 11:54:03 nonarpinv.dll
29/10/2025 9:56:16  10/12/2025 21:52:16 AppxPackaging.dll
29/10/2025 9:56:16  10/12/2025 13:45:44 AppxApplicabilityEngine.dll
29/10/2025 9:56:16  10/12/2025 13:43:19 MrmDeploy.dll
29/10/2025 9:56:16  10/12/2025 21:51:17 OpcServices.dll
29/10/2025 9:56:16  10/12/2025 21:50:11 MrmCoreR.dll
29/10/2025 9:56:16  29/10/2025 11:53:58 MrmIndexer.dll
29/10/2025 9:56:16  10/12/2025 21:51:56 CompPkgSup.dll
29/10/2025 9:56:16  10/12/2025 14:17:01 xpsservices.dll
29/10/2025 9:56:16  10/12/2025 10:37:27 mycomput.dll
29/10/2025 9:56:16  29/10/2025 11:53:58 ComposerFramework.dll
29/10/2025 9:56:16  29/10/2025 11:54:04 netid.dll
29/10/2025 9:56:16  29/10/2025 11:53:59 WindowsInternal.ComposableShell.Display.dll
29/10/2025 9:56:16  29/10/2025 11:54:04 ConfigureExpandedStorage.dll
29/10/2025 9:56:16  29/10/2025 11:54:03 ConsoleLogon.dll
29/10/2025 9:56:16  10/12/2025 10:41:25 CmService.dll
29/10/2025 9:56:16  29/10/2025 11:54:06 CmAgent.dll
29/10/2025 9:56:17  08/12/2025 18:36:47 wcimage.dll
29/10/2025 9:56:17  10/12/2025 13:56:09 genpix.dll
29/10/2025 9:56:17  10/12/2025 14:14:16 xmlfilter.dll
29/10/2025 9:56:17  02/12/2025 10:57:48 nlhtml.dll
29/10/2025 9:56:17  08/12/2025 18:36:47 wc_storage.dll
29/10/2025 9:56:17  29/10/2025 11:54:05 mimefilt.dll
29/10/2025 9:56:17  09/12/2025 9:56:10  offfilt.dll
29/10/2025 9:56:17  29/10/2025 11:54:06 rtffilt.dll
29/10/2025 9:56:17  10/12/2025 13:27:15 Query.dll
29/10/2025 9:56:17  26/11/2025 12:42:52 CoreShellAPI.dll
29/10/2025 9:56:17  10/12/2025 21:50:55 CoreShellExtFramework.dll
29/10/2025 9:56:17  10/12/2025 0:28:35  dafBth.dll
29/10/2025 9:56:17  10/12/2025 14:20:09 diagperf.dll
29/10/2025 9:56:17  10/12/2025 21:50:59 BthRadioMedia.dll
29/10/2025 9:56:17  10/12/2025 0:28:35  BthTelemetry.dll
29/10/2025 9:56:17  29/10/2025 13:05:51 joinproviderol.dll
29/10/2025 9:56:17  10/12/2025 21:50:55 SmsRouterSvc.dll
29/10/2025 9:56:17  10/12/2025 21:50:56 tdh.dll
29/10/2025 9:56:17  10/12/2025 10:41:26 wcncsvc.dll
29/10/2025 9:56:17  10/12/2025 21:50:09 windowsperformancerecordercontrol.dll
29/10/2025 9:56:17  10/12/2025 21:50:52 CoreUIComponents.dll
29/10/2025 9:56:17  29/10/2025 11:53:57 Windows.Cortana.Desktop.dll
29/10/2025 9:56:17  29/10/2025 11:54:00 Windows.Cortana.OneCore.dll
29/10/2025 9:56:17  27/11/2025 12:54:17 CPFilters.dll
29/10/2025 9:56:17  29/10/2025 11:54:05 ConstraintIndex.Search.dll
29/10/2025 9:56:17  29/10/2025 11:53:57 CredDialogBroker.dll
29/10/2025 9:56:17  10/12/2025 21:57:14 Windows.UI.CredDialogController.dll
29/10/2025 9:56:17  29/10/2025 11:54:06 CredentialEnrollmentManagerForUser.dll
29/10/2025 9:56:17  10/12/2025 21:50:12 credprovs.dll
29/10/2025 9:56:17  10/12/2025 21:50:12 CredProv2faHelper.dll
29/10/2025 9:56:17  10/12/2025 21:50:59 CredProvCommonCore.dll
29/10/2025 9:56:17  10/12/2025 21:50:12 credprovslegacy.dll
29/10/2025 9:56:17  10/12/2025 21:50:11 CredProvDataModel.dll
29/10/2025 9:56:17  10/12/2025 21:50:12 CredProvHelper.dll
29/10/2025 9:56:17  10/12/2025 21:51:31 credui.dll
29/10/2025 9:56:17  10/12/2025 21:50:12 credprovhost.dll
29/10/2025 9:56:17  10/12/2025 21:56:15 crypt32.dll
29/10/2025 9:56:17  10/12/2025 21:50:10 cryptbase.dll
29/10/2025 9:56:17  10/12/2025 11:23:53 symcryptk.dll
29/10/2025 9:56:17  10/12/2025 21:50:59 cryptnet.dll
29/10/2025 9:56:17  10/12/2025 0:28:35  cryptcatsvc.dll
29/10/2025 9:56:17  29/10/2025 11:53:58 cryptoss.dll
29/10/2025 9:56:17  10/12/2025 21:50:58 CryptoWinRT.dll
29/10/2025 9:56:17  10/12/2025 21:50:15 cryptsp.dll
29/10/2025 9:56:17  10/12/2025 10:41:25 cryptsvc.dll
29/10/2025 9:56:17  10/12/2025 21:52:11 cryptxml.dll
29/10/2025 9:56:17  10/12/2025 14:19:29 cryptui.dll
29/10/2025 9:56:17  10/12/2025 14:20:08 csrsrv.dll
29/10/2025 9:56:17  29/10/2025 11:53:57 CXHProvisioningServer.dll
29/10/2025 9:56:17  10/12/2025 11:54:13 dafDockingProvider.dll
29/10/2025 9:56:17  29/10/2025 11:54:05 dafAspInfraProvider.dll
29/10/2025 9:56:17  27/11/2025 12:53:43 DAFESCL.dll
29/10/2025 9:56:17  06/11/2025 14:23:32 DAFIPP.dll
29/10/2025 9:56:17  10/12/2025 21:50:11 d2d1.dll
29/10/2025 9:56:17  03/11/2025 20:36:14 dafupnp.dll
29/10/2025 9:56:17  03/11/2025 20:36:15 DAFMCP.dll
29/10/2025 9:56:17  10/12/2025 11:54:14 dafWfdProvider.dll
29/10/2025 9:56:17  03/11/2025 20:36:14 DAFWiProv.dll
29/10/2025 9:56:17  06/11/2025 14:23:32 DAFWSD.dll
29/10/2025 9:56:17  10/12/2025 21:50:55 DataExchange.dll
29/10/2025 9:56:17  10/12/2025 11:26:06 Windows.Data.Activities.dll
29/10/2025 9:56:17  10/12/2025 13:42:09 Windows.Data.Pdf.dll
29/10/2025 9:56:17  08/12/2025 18:39:10 discan.dll
29/10/2025 9:56:17  10/12/2025 21:50:56 dbgcore.dll
29/10/2025 9:56:17  10/12/2025 12:56:07 domgmt.dll
29/10/2025 9:56:17  10/12/2025 10:35:27 dosvc.dll
29/10/2025 9:56:17  10/12/2025 12:34:17 PowerGridForecastTask.dll
29/10/2025 9:56:17  10/12/2025 10:35:50 doclient.dll
29/10/2025 9:56:17  29/10/2025 11:54:06 dosettings.dll
29/10/2025 9:56:17  05/12/2025 12:48:25 UpdateCompression.dll
29/10/2025 9:56:17  10/12/2025 21:50:54 DismApi.dll
29/10/2025 9:56:18  18/11/2025 18:51:58 dab.dll
29/10/2025 9:56:18  10/12/2025 14:20:09 DispBroker.Desktop.dll
29/10/2025 9:56:18  10/12/2025 21:50:57 SettingsHandlers_DesktopTaskbar.dll
29/10/2025 9:56:18  10/12/2025 21:50:10 dwmapi.dll
29/10/2025 9:56:18  10/12/2025 14:20:09 dwmghost.dll
29/10/2025 9:56:18  10/12/2025 21:50:12 wuceffects.dll
29/10/2025 9:56:18  10/12/2025 14:20:09 dwmcore.dll
29/10/2025 9:56:18  10/12/2025 14:20:09 dwminit.dll
29/10/2025 9:56:18  10/12/2025 14:20:09 dwmredir.dll
29/10/2025 9:56:18  17/11/2025 19:42:11 dtsh.dll
29/10/2025 9:56:18  10/12/2025 21:50:12 DevDispItemProvider.dll
29/10/2025 9:56:18  10/12/2025 21:50:15 dcntel.dll
29/10/2025 9:56:18  09/12/2025 11:54:05 DeviceCenter.dll
29/10/2025 9:56:18  29/10/2025 13:05:58 ConsentUX.dll
29/10/2025 9:56:18  10/12/2025 10:35:29 DdcComImplementationsDesktop.dll
29/10/2025 9:56:18  10/12/2025 10:50:56 DeviceDirectoryClient.dll
29/10/2025 9:56:18  10/12/2025 21:50:09 MdmCommon.dll
29/10/2025 9:56:18  10/12/2025 21:50:10 DeviceDriverRetrievalClient.dll
29/10/2025 9:56:18  10/12/2025 21:56:24 dggpext.dll
29/10/2025 9:56:18  08/12/2025 18:39:42 pnppolicy.dll
29/10/2025 9:56:18  29/10/2025 11:53:56 DeviceElementSource.dll
29/10/2025 9:56:18  10/12/2025 21:55:52 DeviceFlows.DataModel.dll
29/10/2025 9:56:18  10/12/2025 21:51:00 coredpus.dll
29/10/2025 9:56:18  10/12/2025 21:50:11 dmcmnutils.dll
29/10/2025 9:56:18  10/12/2025 21:50:54 dcsvc.dll
29/10/2025 9:56:18  10/12/2025 21:51:05 configmanager2.dll
29/10/2025 9:56:18  10/12/2025 21:51:05 DmApiSetExtImplDesktop.dll
29/10/2025 9:56:18  19/11/2025 10:12:47 DiagnosticLogCSP.dll
29/10/2025 9:56:18  10/12/2025 21:50:15 policymanager.dll
29/10/2025 9:56:18  10/12/2025 21:51:05 dmcsps.dll
29/10/2025 9:56:18  29/10/2025 11:53:59 policymanagerprecheck.dll
29/10/2025 9:56:18  10/12/2025 21:50:55 dmwappushsvc.dll
29/10/2025 9:56:18  10/12/2025 21:51:05 enterprisecsps.dll
29/10/2025 9:56:18  10/12/2025 21:51:00 dmxmlhelputils.dll
29/10/2025 9:56:18  10/12/2025 21:50:11 omadmapi.dll
29/10/2025 9:56:18  29/10/2025 11:54:03 unenrollhook.dll
29/10/2025 9:56:18  10/12/2025 21:51:05 enterpriseresourcemanager.dll
29/10/2025 9:56:18  29/10/2025 11:54:01 GPCSEWrapperCsp.dll
29/10/2025 9:56:18  29/10/2025 11:53:56 fwmdmcsp.dll
29/10/2025 9:56:18  10/12/2025 21:50:55 prauthproviders.dll
29/10/2025 9:56:18  29/10/2025 11:53:57 DmOsConfig.dll
29/10/2025 9:56:18  29/10/2025 11:54:00 DevicePairingFolder.dll
29/10/2025 9:56:18  10/12/2025 21:50:10 DevPropMgr.dll
29/10/2025 9:56:18  27/11/2025 12:54:35 ReportingCSP.dll
29/10/2025 9:56:18  10/12/2025 11:25:04 Windows.Devices.Background.dll
29/10/2025 9:56:18  29/10/2025 11:54:05 Windows.Internal.Devices.Lights.Configuration.dll
29/10/2025 9:56:18  10/12/2025 11:26:26 Windows.Devices.Custom.dll
29/10/2025 9:56:18  10/12/2025 21:51:10 Windows.Devices.Bluetooth.dll
29/10/2025 9:56:18  29/10/2025 11:54:00 Windows.Devices.HumanInterfaceDevice.dll
29/10/2025 9:56:18  10/12/2025 21:52:12 Windows.Devices.Lights.dll
29/10/2025 9:56:18  10/12/2025 21:50:12 Windows.Devices.Enumeration.dll
29/10/2025 9:56:18  29/10/2025 11:54:02 Windows.Devices.Midi.dll
29/10/2025 9:56:18  29/10/2025 11:54:06 Midi2.KSAggregateTransport.dll
29/10/2025 9:56:18  29/10/2025 11:54:02 Midi2.KSTransport.dll
29/10/2025 9:56:18  29/10/2025 11:53:58 Midi2.LoopbackMidiTransport.dll
29/10/2025 9:56:18  29/10/2025 11:53:58 Midi2.MidiSrvTransport.dll
29/10/2025 9:56:18  29/10/2025 11:54:02 Midi2.UMP2BSTransform.dll
29/10/2025 9:56:19  29/10/2025 11:53:58 Midi2.VirtualMidiTransport.dll
29/10/2025 9:56:19  10/12/2025 10:41:26 Windows.Devices.Picker.dll
29/10/2025 9:56:19  03/11/2025 20:36:15 dafpos.dll
29/10/2025 9:56:19  29/10/2025 11:53:59 Windows.Devices.SmartCards.dll
29/10/2025 9:56:19  29/10/2025 11:53:57 Windows.Devices.PointOfService.dll
29/10/2025 9:56:19  09/12/2025 23:34:20 Windows.Devices.Usb.dll
29/10/2025 9:56:19  10/12/2025 0:28:36  Windows.Devices.WiFiDirect.dll
29/10/2025 9:56:19  09/12/2025 11:06:35 DeviceSetupManagerAPI.dll
29/10/2025 9:56:19  10/12/2025 21:50:10 DeviceSetupManager.dll
29/10/2025 9:56:19  10/12/2025 21:50:10 DeviceSoftwareInstallationClient.dll
29/10/2025 9:56:19  10/12/2025 21:55:52 DevicesFlowBroker.dll
29/10/2025 9:56:19  10/12/2025 21:55:52 DeviceSetupStatusProvider.dll
29/10/2025 9:56:19  29/10/2025 13:05:47 DeviceUpdateAgent.dll
29/10/2025 9:56:19  10/12/2025 14:06:08 DevQueryBroker.dll
29/10/2025 9:56:19  10/12/2025 21:50:56 wdi.dll
29/10/2025 9:56:19  10/12/2025 13:46:31 dps.dll
29/10/2025 9:56:19  10/12/2025 21:50:10 dimsjob.dll
29/10/2025 9:56:19  29/10/2025 11:53:57 dialclient.dll
29/10/2025 9:56:19  29/10/2025 13:05:48 dimsroam.dll
29/10/2025 9:56:19  29/10/2025 11:53:57 capiprovider.dll
29/10/2025 9:56:19  29/10/2025 11:54:00 dialserver.dll
29/10/2025 9:56:19  29/10/2025 11:54:01 cngprovider.dll
29/10/2025 9:56:19  29/10/2025 11:54:04 adprovider.dll
29/10/2025 9:56:19  29/10/2025 11:54:05 dpapiprovider.dll
29/10/2025 9:56:19  29/10/2025 11:54:00 wincredprovider.dll
29/10/2025 9:56:19  10/12/2025 21:50:09 samcli.dll
29/10/2025 9:56:19  29/10/2025 11:54:05 offlinesam.dll
29/10/2025 9:56:19  10/12/2025 21:50:11 dcomp.dll
29/10/2025 9:56:19  10/12/2025 10:41:25 samsrv.dll
29/10/2025 9:56:19  10/12/2025 21:50:11 samlib.dll
29/10/2025 9:56:19  10/12/2025 13:41:18 mfksproxy.dll
29/10/2025 9:56:19  03/11/2025 9:53:56  quartz.dll
29/10/2025 9:56:19  10/12/2025 13:41:18 devenum.dll
29/10/2025 9:56:19  10/12/2025 21:50:11 TextShaping.dll
29/10/2025 9:56:19  10/12/2025 21:50:11 DWrite.dll
29/10/2025 9:56:19  10/12/2025 10:41:25 FntCache.dll
29/10/2025 9:56:19  29/10/2025 11:54:04 d2d1debug3.dll
29/10/2025 9:56:19  29/10/2025 13:05:52 d3d10level9.dll
29/10/2025 9:56:19  10/12/2025 11:24:26 d3d11_3SDKLayers.dll
29/10/2025 9:56:19  29/10/2025 11:53:57 d3d12SDKLayers.dll
29/10/2025 9:56:19  10/12/2025 21:50:11 d3d11.dll
29/10/2025 9:56:19  29/10/2025 11:54:03 d3d11on12.dll
29/10/2025 9:56:19  10/12/2025 14:20:12 ddisplay.dll
29/10/2025 9:56:19  10/12/2025 21:51:57 D3D12.dll
29/10/2025 9:56:19  10/12/2025 21:52:59 D3D12Core.dll
29/10/2025 9:56:19  10/12/2025 21:52:11 d3d9.dll
29/10/2025 9:56:19  29/10/2025 11:53:57 d3d9on12.dll
29/10/2025 9:56:19  10/12/2025 21:52:59 D3DSCache.dll
29/10/2025 9:56:19  10/12/2025 10:35:27 ddraw.dll
29/10/2025 9:56:19  10/12/2025 10:35:22 dxdiagn.dll
29/10/2025 9:56:19  10/12/2025 21:50:10 dxgi.dll
29/10/2025 9:56:19  10/12/2025 10:41:25 GraphicsPerfSvc.dll
29/10/2025 9:56:19  27/11/2025 12:54:40 VsGraphicsCapture.dll
29/10/2025 9:56:19  29/10/2025 11:54:00 VsGraphicsExperiment.dll
29/10/2025 9:56:19  29/10/2025 11:53:57 DXToolsOfflineAnalysis.dll
29/10/2025 9:56:19  29/10/2025 11:53:59 VSD3DWARPDebug.dll
29/10/2025 9:56:19  29/10/2025 11:54:02 DXCaptureReplay.dll
29/10/2025 9:56:19  10/12/2025 10:41:26 Windows.WARP.JITService.dll
29/10/2025 9:56:19  10/12/2025 21:50:54 dxva2.dll
29/10/2025 9:56:19  10/12/2025 12:58:17 XInput1_4.dll
29/10/2025 9:56:19  27/11/2025 12:53:46 XAudio2_9.dll
29/10/2025 9:56:19  10/12/2025 21:50:59 d3d10warp.dll
29/10/2025 9:56:20  29/10/2025 11:54:02 DisplayManager.dll
29/10/2025 9:56:20  29/10/2025 11:53:59 DMRServer.dll
29/10/2025 9:56:20  27/11/2025 12:54:37 DnsClientCSP.dll
29/10/2025 9:56:20  10/12/2025 0:28:38  dnsrslvr.dll
29/10/2025 9:56:20  10/12/2025 21:50:15 dnsapi.dll
29/10/2025 9:56:20  29/10/2025 11:53:59 nshdnsclient.dll
29/10/2025 9:56:20  03/11/2025 20:36:14 DafDnsSd.dll
29/10/2025 9:56:20  29/10/2025 11:54:06 Docking.VirtualInput.dll
29/10/2025 9:56:20  29/10/2025 13:05:50 dot3gpclnt.dll
29/10/2025 9:56:20  29/10/2025 11:54:02 dot3gpui.dll
29/10/2025 9:56:20  10/12/2025 10:41:25 dot3svc.dll
29/10/2025 9:56:20  10/12/2025 21:50:55 dpapisrv.dll
29/10/2025 9:56:20  08/12/2025 18:19:26 WUDFCoinstaller.dll
29/10/2025 9:56:20  08/12/2025 18:19:27 WUDFx.dll
29/10/2025 9:56:20  10/12/2025 0:28:38  WUDFPlatform.dll
29/10/2025 9:56:20  10/12/2025 21:51:59 drvstore.dll
29/10/2025 9:56:20  10/12/2025 21:51:25 dui70.dll
29/10/2025 9:56:20  10/12/2025 10:41:25 dusmsvc.dll
29/10/2025 9:56:20  10/12/2025 21:51:25 duser.dll
29/10/2025 9:56:20  29/10/2025 11:54:03 eappcfgui.dll
29/10/2025 9:56:20  10/12/2025 10:35:59 eapputil.dll
29/10/2025 9:56:20  10/12/2025 14:20:15 EapTeapAuth.dll
29/10/2025 9:56:20  10/12/2025 14:20:15 EapTeapConfig.dll
29/10/2025 9:56:20  10/12/2025 14:20:15 TtlsCfg.dll
29/10/2025 9:56:20  10/12/2025 14:20:15 TtlsAuth.dll
29/10/2025 9:56:20  10/12/2025 0:28:38  WebRuntimeManager.dll
29/10/2025 9:56:20  29/10/2025 11:54:00 EdgeContent.dll
29/10/2025 9:56:20  10/12/2025 21:56:23 BitLockerCsp.dll
29/10/2025 9:56:20  06/11/2025 13:11:21 edptask.dll
29/10/2025 9:56:20  10/12/2025 21:50:55 edputil.dll
29/10/2025 9:56:20  29/10/2025 11:53:57 efslsaext.dll
29/10/2025 9:56:20  29/10/2025 11:54:00 efsext.dll
29/10/2025 9:56:20  09/12/2025 8:56:42  efscore.dll
29/10/2025 9:56:20  29/10/2025 11:54:06 efsadu.dll
29/10/2025 9:56:20  10/12/2025 21:50:58 Windows.Energy.dll
29/10/2025 9:56:20  10/12/2025 11:36:32 energytask.dll
29/10/2025 9:56:20  10/12/2025 12:51:34 energy.dll
29/10/2025 9:56:20  29/10/2025 11:53:57 eeutil.dll
29/10/2025 9:56:20  10/12/2025 21:50:54 dmenrollengine.dll
29/10/2025 9:56:20  10/12/2025 21:56:20 enrollmentapi.dll
29/10/2025 9:56:20  27/11/2025 12:53:46 evr.dll
29/10/2025 9:56:20  27/11/2025 12:54:08 mdmmigrator.dll
29/10/2025 9:56:20  29/10/2025 11:53:58 DMAlertListener.ProxyStub.dll
29/10/2025 9:56:20  10/12/2025 21:50:55 Windows.Internal.Management.dll
29/10/2025 9:56:20  19/11/2025 10:12:48 MdmDiagnostics.dll
29/10/2025 9:56:20  10/12/2025 21:56:23 EnterpriseDesktopAppMgmtCSP.dll
29/10/2025 9:56:20  10/12/2025 10:41:26 workfolderssvc.dll
29/10/2025 9:56:20  10/12/2025 10:41:26 wercplsupport.dll
29/10/2025 9:56:20  10/12/2025 10:41:25 EnterpriseAppMgmtSvc.dll
29/10/2025 9:56:20  10/12/2025 21:50:28 wer.dll
29/10/2025 9:56:20  29/10/2025 11:54:00 werdiagcontroller.dll
29/10/2025 9:56:20  10/12/2025 0:05:40  weretw.dll
29/10/2025 9:56:20  10/12/2025 11:36:30 Faultrep.dll
29/10/2025 9:56:20  29/10/2025 11:54:04 WerEnc.dll
29/10/2025 9:56:21  18/11/2025 1:01:02  werui.dll
29/10/2025 9:56:21  29/10/2025 11:53:57 EsclProtocol.dll
29/10/2025 9:56:21  10/12/2025 0:09:24  EsdSip.dll
29/10/2025 9:56:21  10/12/2025 11:37:33 EtwRundown.dll
29/10/2025 9:56:21  29/10/2025 11:54:04 EsclScan.dll
29/10/2025 9:56:21  10/12/2025 21:50:56 wevtapi.dll
29/10/2025 9:56:21  10/12/2025 21:51:04 wevtsvc.dll
29/10/2025 9:56:21  10/12/2025 0:28:39  MitigationConfiguration.dll
29/10/2025 9:56:21  10/12/2025 21:50:54 ExecModelClient.dll
29/10/2025 9:56:21  29/10/2025 11:53:57 eapp3hst.dll
29/10/2025 9:56:21  10/12/2025 21:55:52 eappcfg.dll
29/10/2025 9:56:21  10/12/2025 10:36:00 eapsvc.dll
29/10/2025 9:56:21  10/12/2025 11:24:38 eapphost.dll
29/10/2025 9:56:21  10/12/2025 11:02:46 clusapi.dll
29/10/2025 9:56:21  10/12/2025 21:50:54 esent.dll
29/10/2025 9:56:21  10/12/2025 11:02:46 resutils.dll
29/10/2025 9:56:21  10/12/2025 10:41:26 WpcRefreshTask.dll
29/10/2025 9:56:21  10/12/2025 10:44:31 fdBth.dll
29/10/2025 9:56:21  10/12/2025 21:50:12 feclient.dll
29/10/2025 9:56:21  29/10/2025 11:53:56 CourtesyEngine.dll
29/10/2025 9:56:21  10/12/2025 10:41:26 wersvc.dll
29/10/2025 9:56:21  29/10/2025 11:54:00 fhcpl.dll
29/10/2025 9:56:21  29/10/2025 11:54:04 fhcat.dll
29/10/2025 9:56:21  10/12/2025 14:20:08 ifsutil.dll
29/10/2025 9:56:21  10/12/2025 13:05:12 cmdext.dll
29/10/2025 9:56:21  10/12/2025 14:20:08 ulib.dll
29/10/2025 9:56:21  18/11/2025 14:24:37 uReFS.dll
29/10/2025 9:56:21  29/10/2025 13:05:50 fltmgrres.dll
29/10/2025 9:56:21  27/11/2025 12:54:54 cmifw.dll
29/10/2025 9:56:21  29/10/2025 11:53:58 MSFlacDecoder.dll
29/10/2025 9:56:21  10/12/2025 21:50:15 FlightSettings.dll
29/10/2025 9:56:22  25/11/2025 17:27:45 fontext.dll
29/10/2025 9:56:22  10/12/2025 21:51:08 Microsoft.Internal.FrameworkUdk.System.dll
29/10/2025 9:56:22  29/10/2025 11:53:57 atmlib.dll
29/10/2025 9:56:22  06/11/2025 13:11:46 mf3216.dll
29/10/2025 9:56:22  10/12/2025 21:56:15 gdi32.dll
29/10/2025 9:56:22  10/12/2025 10:50:56 LocationFrameworkInternalPS.dll
29/10/2025 9:56:22  10/12/2025 21:50:28 LocationFrameworkPS.dll
29/10/2025 9:56:22  10/12/2025 21:56:15 gdi32full.dll
29/10/2025 9:56:22  10/12/2025 0:28:40  LocationFramework.dll
29/10/2025 9:56:22  10/12/2025 10:41:25 lfsvc.dll
29/10/2025 9:56:23  10/12/2025 21:50:28 Geolocation.dll
29/10/2025 9:56:23  10/12/2025 0:28:41  LocationWinPalMisc.dll
29/10/2025 9:56:23  03/11/2025 20:36:13 DafGip.dll
29/10/2025 9:56:23  10/12/2025 21:50:11 Windows.Globalization.dll
29/10/2025 9:56:23  10/12/2025 13:45:43 DispBroker.dll
29/10/2025 9:56:23  08/12/2025 21:06:52 Windows.Graphics.Display.BrightnessOverride.dll
29/10/2025 9:56:23  08/12/2025 21:06:52 Windows.Graphics.Display.DisplayEnhancementOverride.dll
29/10/2025 9:56:23  10/12/2025 10:41:25 Microsoft.Graphics.Display.DisplayEnhancementService.dll
29/10/2025 9:56:23  29/10/2025 11:53:59 dxgwdi.dll
29/10/2025 9:56:23  10/12/2025 13:47:11 GraphicsCapture.dll
29/10/2025 9:56:23  29/10/2025 11:54:03 AdmTmpl.dll
29/10/2025 9:56:23  03/11/2025 20:40:19 gpedit.dll
29/10/2025 9:56:23  10/12/2025 11:25:18 scrptadm.dll
29/10/2025 9:56:23  10/12/2025 21:50:11 gpapi.dll
29/10/2025 9:56:23  10/12/2025 13:36:29 gpsvc.dll
29/10/2025 9:56:23  10/12/2025 10:41:25 appmgmts.dll
29/10/2025 9:56:23  29/10/2025 11:54:04 gpprefcl.dll
29/10/2025 9:56:23  29/10/2025 11:53:57 gpscript.dll
29/10/2025 9:56:23  10/12/2025 21:50:56 hascsp.dll
29/10/2025 9:56:23  10/12/2025 11:26:10 HeatCore.dll
29/10/2025 9:56:23  29/10/2025 13:05:46 gns.dll
29/10/2025 9:56:23  29/10/2025 11:53:58 WindowsDefaultHeatProcessor.dll
29/10/2025 9:56:23  10/12/2025 13:26:45 hlink.dll
29/10/2025 9:56:23  10/12/2025 10:41:25 hpatchmon.dll
29/10/2025 9:56:23  04/12/2025 11:24:19 hgcpl.dll
29/10/2025 9:56:23  10/12/2025 0:02:59  hotpatchutil.dll
29/10/2025 9:56:23  10/12/2025 13:43:21 NetMgmtIF.dll
29/10/2025 9:56:23  10/12/2025 0:28:41  computenetwork.dll
29/10/2025 9:56:23  10/12/2025 21:51:13 hspapi.dll
29/10/2025 9:56:23  29/10/2025 11:54:04 Windows.Networking.NetworkOperators.HotspotAuthentication.dll
29/10/2025 9:56:23  29/10/2025 11:53:59 itss.dll
29/10/2025 9:56:23  10/12/2025 11:24:18 httpapi.dll
29/10/2025 9:56:23  10/12/2025 0:28:41  HttpsDataSource.dll
29/10/2025 9:56:23  18/11/2025 18:52:00 httpprxm.dll
29/10/2025 9:56:23  10/12/2025 21:50:58 IsolatedWindowsEnvironmentUtils.dll
29/10/2025 9:56:23  10/12/2025 13:26:45 HvsiManagementApi.dll
29/10/2025 9:56:23  10/12/2025 13:26:45 windowsdefenderapplicationguardcsp.dll
29/10/2025 9:56:24  10/12/2025 21:56:11 hwreqchk.dll
29/10/2025 9:56:24  29/10/2025 11:54:03 vfpapi.dll
29/10/2025 9:56:24  10/12/2025 21:51:13 vbsapi.dll
29/10/2025 9:56:24  29/10/2025 11:54:01 vbssysprep.dll
29/10/2025 9:56:24  10/12/2025 21:50:54 mscms.dll
29/10/2025 9:56:24  10/12/2025 21:51:28 colorui.dll
29/10/2025 9:56:24  29/10/2025 11:53:57 jsproxy.dll
29/10/2025 9:56:24  29/10/2025 13:05:46 IdCtrls.dll
29/10/2025 9:56:24  04/11/2025 8:48:44  ieapfltr.dll
29/10/2025 9:56:24  10/12/2025 21:50:54 wininet.dll
29/10/2025 9:56:24  04/11/2025 8:48:43  IndexedDbLegacy.dll
29/10/2025 9:56:24  10/12/2025 0:28:42  webplatstorageserver.dll
29/10/2025 9:56:24  10/12/2025 21:50:11 urlmon.dll
29/10/2025 9:56:24  04/11/2025 20:46:29 edgeIso.dll
29/10/2025 9:56:24  10/12/2025 21:50:11 iertutil.dll
29/10/2025 9:56:24  10/12/2025 21:51:49 msIso.dll
29/10/2025 9:56:24  10/12/2025 13:48:23 mshtml.dll
29/10/2025 9:56:24  10/12/2025 0:28:42  edgehtml.dll
29/10/2025 9:56:24  10/12/2025 21:50:59 ieframe.dll
29/10/2025 9:56:24  27/11/2025 12:53:39 ieui.dll
29/10/2025 9:56:24  10/12/2025 21:50:52 imm32.dll
29/10/2025 9:56:24  10/12/2025 21:50:57 windows.immersiveshell.serviceprovider.dll
29/10/2025 9:56:25  29/10/2025 11:54:01 InputInjectionBroker.dll
29/10/2025 9:56:25  29/10/2025 11:54:01 ChsStrokeDS.dll
29/10/2025 9:56:25  29/10/2025 11:53:56 ChtCangjieDS.dll
29/10/2025 9:56:25  29/10/2025 11:54:04 ChtBopomofoDS.dll
29/10/2025 9:56:25  29/10/2025 11:54:03 ChtHkStrokeDS.dll
29/10/2025 9:56:25  29/10/2025 11:54:02 ChtQuickDS.dll
29/10/2025 9:56:25  29/10/2025 11:54:05 ChxAPDS.dll
29/10/2025 9:56:25  06/11/2025 13:11:31 ChxHAPDS.dll
29/10/2025 9:56:25  29/10/2025 11:54:00 ChxDecoder.dll
29/10/2025 9:56:25  27/11/2025 12:53:59 chxinputrouter.dll
29/10/2025 9:56:25  29/10/2025 11:54:01 chxranker.dll
29/10/2025 9:56:25  29/10/2025 11:54:03 EmojiDS.dll
29/10/2025 9:56:25  27/11/2025 12:53:57 HashtagDS.dll
29/10/2025 9:56:25  06/11/2025 13:11:25 IHDS.dll
29/10/2025 9:56:25  29/10/2025 11:54:06 jpndecoder.dll
29/10/2025 9:56:25  29/10/2025 11:54:05 jpninputrouter.dll
29/10/2025 9:56:25  29/10/2025 11:54:02 MTFAppServiceDS.dll
29/10/2025 9:56:25  29/10/2025 11:53:57 MtfDecoder.dll
29/10/2025 9:56:25  10/12/2025 0:28:44  FluencyDS.dll
29/10/2025 9:56:25  29/10/2025 11:54:01 jpnranker.dll
29/10/2025 9:56:25  29/10/2025 11:54:02 RuleBasedDS.dll
29/10/2025 9:56:25  14/11/2025 13:48:43 EditBufferTestHook.dll
29/10/2025 9:56:25  10/12/2025 21:50:52 InputLocaleManager.dll
29/10/2025 9:56:25  29/10/2025 11:54:01 trie.dll
29/10/2025 9:56:25  29/10/2025 11:54:05 VocabRoamingHandler.dll
29/10/2025 9:56:25  10/12/2025 21:50:52 TextInputMethodFormatter.dll
29/10/2025 9:56:25  10/12/2025 21:50:52 Windows.UI.Core.TextInput.dll
29/10/2025 9:56:25  10/12/2025 21:51:16 WordBreakers.dll
29/10/2025 9:56:25  10/12/2025 21:50:52 InputSwitch.dll
29/10/2025 9:56:25  18/11/2025 18:55:02 EAMProgressHandler.dll
29/10/2025 9:56:25  10/12/2025 10:41:25 msimsg.dll
29/10/2025 9:56:25  10/12/2025 21:50:57 msi.dll
29/10/2025 9:56:25  27/11/2025 12:54:02 msihnd.dll
29/10/2025 9:56:25  10/12/2025 21:51:17 msisip.dll
29/10/2025 9:56:25  10/12/2025 13:56:06 Windows.Internal.CapturePicker.Desktop.dll
29/10/2025 9:56:25  10/12/2025 21:50:55 Windows.Internal.Graphics.Display.DisplayColorManagement.dll
29/10/2025 9:56:25  10/12/2025 0:28:44  Windows.Internal.Devices.Bluetooth.dll
29/10/2025 9:56:25  04/12/2025 14:15:15 Windows.Internal.OpenWithHost_WinUI3.dll
29/10/2025 9:56:25  10/12/2025 12:54:15 Windows.Internal.HardwareConfirmator.dll
29/10/2025 9:56:25  27/11/2025 12:54:41 Windows.Internal.OpenWithHost.dll
29/10/2025 9:56:25  10/12/2025 21:50:49 aadWamExtension.dll
29/10/2025 9:56:25  27/11/2025 12:54:18 CloudIdWxhExtension.dll
29/10/2025 9:56:25  10/12/2025 21:50:58 MicrosoftAccountWAMExtension.dll
29/10/2025 9:56:25  10/12/2025 21:50:54 ShellConfigTask.dll
29/10/2025 9:56:25  18/11/2025 18:56:59 SettingsConfigTask.dll
29/10/2025 9:56:25  06/11/2025 13:12:07 windows.internal.shellcommon.AccountsControlExperience.dll
29/10/2025 9:56:25  10/12/2025 21:50:57 Windows.Internal.ShellCommon.dll
29/10/2025 9:56:25  10/12/2025 21:50:58 Windows.Internal.Shell.Broker.dll
29/10/2025 9:56:25  29/10/2025 11:54:01 Windows.Internal.Shell.XamlInputViewHost.dll
29/10/2025 9:56:25  29/10/2025 11:54:00 windows.internal.shellcommon.AppResolverModal.dll
29/10/2025 9:56:25  29/10/2025 11:53:59 windows.internal.shellcommon.shareexperience.dll
29/10/2025 9:56:25  10/12/2025 21:50:58 Windows.Internal.System.UserProfile.dll
29/10/2025 9:56:25  29/10/2025 11:53:59 Microsoft-Windows-Internal-Shell-NearShareExperience.dll
29/10/2025 9:56:25  02/12/2025 10:35:10 Windows.Internal.UI.Dialogs.dll
29/10/2025 9:56:25  23/11/2025 14:39:19 IppCommon.dll
29/10/2025 9:56:25  10/12/2025 21:50:12 icu.dll
29/10/2025 9:56:25  10/12/2025 10:41:25 ipxlatcfg.dll
29/10/2025 9:56:25  10/12/2025 21:51:03 iphlpsvc.dll
29/10/2025 9:56:25  10/12/2025 21:50:58 iuilp.dll
29/10/2025 9:56:25  10/12/2025 0:28:45  kdcpw.dll
29/10/2025 9:56:25  10/12/2025 21:50:09 kernel.appcore.dll
29/10/2025 9:56:25  10/12/2025 21:56:15 kernel32.dll
29/10/2025 9:56:26  10/12/2025 21:55:51 LanguageComponentsInstaller.dll
29/10/2025 9:56:26  10/12/2025 11:24:20 LanguagePackDiskCleanup.dll
29/10/2025 9:56:26  10/12/2025 21:50:52 globinputhost.dll
29/10/2025 9:56:26  10/12/2025 21:51:25 UserLanguageProfileCallback.dll
29/10/2025 9:56:26  10/12/2025 21:50:52 Winlangdb.dll
29/10/2025 9:56:26  29/10/2025 11:53:59 lapscsp.dll
29/10/2025 9:56:26  10/12/2025 21:51:04 Wldap32.dll
29/10/2025 9:56:26  29/10/2025 13:05:46 laps.dll
29/10/2025 9:56:26  10/12/2025 11:19:52 LockController.dll
29/10/2025 9:56:26  10/12/2025 14:20:05 LockAppBroker.dll
29/10/2025 9:56:26  29/10/2025 11:54:05 LockHostingFramework.dll
29/10/2025 9:56:26  10/12/2025 14:19:28 LockScreenData.dll
29/10/2025 9:56:26  10/12/2025 0:28:45  sspisrv.dll
29/10/2025 9:56:26  10/12/2025 21:50:10 sspicli.dll
29/10/2025 9:56:26  10/12/2025 0:28:45  appinfoext.dll
29/10/2025 9:56:26  10/12/2025 21:51:28 inetcomm.dll
29/10/2025 9:56:26  29/10/2025 11:53:59 SecureAssessmentHandlers.dll
29/10/2025 9:56:26  29/10/2025 11:53:58 JpMapControl.dll
29/10/2025 9:56:26  27/11/2025 12:54:21 NmaDirect.dll
29/10/2025 9:56:26  04/12/2025 11:24:36 MosStorage.dll
29/10/2025 9:56:26  06/11/2025 13:11:17 MapRouter.dll
29/10/2025 9:56:26  03/11/2025 9:49:21  mapi32.dll
29/10/2025 9:56:26  27/11/2025 12:54:42 mapistub.dll
29/10/2025 9:56:26  10/12/2025 21:52:55 MCCSEngineShared.dll
29/10/2025 9:56:26  10/12/2025 21:52:55 SyncController.dll
29/10/2025 9:56:26  10/12/2025 10:41:25 McpManagementService.dll
29/10/2025 9:56:26  29/10/2025 11:53:57 MCRecvSrc.dll
29/10/2025 9:56:26  10/12/2025 21:50:11 mdmregistration.dll
29/10/2025 9:56:26  10/11/2025 17:26:45 Windows.Media.Audio.dll
29/10/2025 9:56:26  10/12/2025 21:50:59 Windows.Media.Devices.dll
29/10/2025 9:56:26  29/10/2025 11:53:56 Windows.Media.Import.dll
29/10/2025 9:56:26  29/10/2025 13:05:59 Windows.Media.Streaming.dll
29/10/2025 9:56:26  10/12/2025 21:50:35 FrameServerMonitor.dll
29/10/2025 9:56:26  10/12/2025 13:41:18 FrameServerClient.dll
29/10/2025 9:56:26  10/12/2025 21:50:10 FrameServer.dll
29/10/2025 9:56:26  10/12/2025 13:41:18 FrameServerCore.dll
29/10/2025 9:56:26  10/12/2025 21:50:10 mfsensorgroup.dll
29/10/2025 9:56:27  10/12/2025 13:45:43 MFCaptureEngine.dll
29/10/2025 9:56:27  10/12/2025 13:41:18 FrameServerMonitorClient.dll
29/10/2025 9:56:27  10/12/2025 13:36:53 MFMediaEngine.dll
29/10/2025 9:56:27  29/10/2025 11:53:56 MSPhotography.dll
29/10/2025 9:56:27  10/12/2025 13:36:54 mfsvr.dll
29/10/2025 9:56:27  29/10/2025 11:54:00 WMNetMgr.dll
29/10/2025 9:56:27  10/12/2025 21:51:04 wmp.dll
29/10/2025 9:56:27  10/12/2025 11:24:39 WMVCORE.DLL
29/10/2025 9:56:27  10/12/2025 10:35:56 MemoryDiagnostic.dll
29/10/2025 9:56:27  29/10/2025 11:54:03 mfaudiocnv.dll
29/10/2025 9:56:27  29/10/2025 13:05:54 mfh264enc.dll
29/10/2025 9:56:27  29/10/2025 11:54:01 mfmjpegdec.dll
29/10/2025 9:56:27  10/12/2025 13:45:37 mfmkvsrcsnk.dll
29/10/2025 9:56:27  11/11/2025 11:50:08 mfmp4srcsnk.dll
29/10/2025 9:56:27  10/12/2025 21:50:10 mfplat.dll
29/10/2025 9:56:27  29/10/2025 13:05:58 MFPlay.dll
29/10/2025 9:56:27  10/12/2025 21:56:20 mfreadwrite.dll
29/10/2025 9:56:27  11/11/2025 11:50:31 mfsrcsnk.dll
29/10/2025 9:56:27  02/12/2025 12:40:19 odbc32.dll
29/10/2025 9:56:27  03/12/2025 11:59:47 mmcndmgr.dll
29/10/2025 9:56:27  03/11/2025 12:34:03 MicrosoftAccountExtension.dll
29/10/2025 9:56:28  06/11/2025 13:11:25 MiracastReceiver.dll
29/10/2025 9:56:28  10/12/2025 11:24:38 MiracastReceiverExt.dll
29/10/2025 9:56:28  10/12/2025 0:28:49  MissionControlAggregator.dll
29/10/2025 9:56:28  10/12/2025 10:41:25 MitigationClient.dll
29/10/2025 9:56:28  10/12/2025 21:51:01 mlang.dll
29/10/2025 9:56:28  10/12/2025 21:50:11 MMDevAPI.dll
29/10/2025 9:56:28  29/10/2025 13:06:00 MbaeApi.dll
29/10/2025 9:56:28  29/10/2025 11:54:02 LocationApi.dll
29/10/2025 9:56:28  10/12/2025 21:51:05 MbaeApiPublic.dll
29/10/2025 9:56:28  10/12/2025 11:24:44 SensorsApi.dll
29/10/2025 9:56:28  10/12/2025 21:50:59 SyncCenter.dll
29/10/2025 9:56:28  06/11/2025 13:11:24 MP4SDECD.DLL
29/10/2025 9:56:28  10/12/2025 21:50:54 mpr.dll
29/10/2025 9:56:28  10/12/2025 21:50:54 modernexecserver.dll
29/10/2025 9:56:28  10/12/2025 21:50:10 msasn1.dll
29/10/2025 9:56:28  10/12/2025 13:43:24 MSAudDecMFT.dll
29/10/2025 9:56:28  29/10/2025 11:54:00 msieftp.dll
29/10/2025 9:56:28  10/12/2025 21:50:52 msftedit.dll
29/10/2025 9:56:28  10/12/2025 21:50:58 mskeyprotect.dll
29/10/2025 9:56:28  10/12/2025 11:24:14 mskeyprotcli.dll
29/10/2025 9:56:28  29/10/2025 11:54:00 msmpeg2ac3dec.dll
29/10/2025 9:56:28  29/10/2025 13:05:55 msmpeg2adec.dll
29/10/2025 9:56:29  29/10/2025 13:05:53 MSMPEG2ENC.DLL
29/10/2025 9:56:29  10/12/2025 21:50:11 msvcp110_win.dll
29/10/2025 9:56:29  29/10/2025 11:54:05 mssign32.dll
29/10/2025 9:56:29  10/12/2025 21:56:15 msvcrt.dll
29/10/2025 9:56:29  10/12/2025 13:27:15 msxml3.dll
29/10/2025 9:56:29  10/12/2025 21:50:55 msxml6.dll
29/10/2025 9:56:29  10/12/2025 21:50:53 MTF.dll
29/10/2025 9:56:29  29/10/2025 11:54:04 ContactHarvesterDS.dll
29/10/2025 9:56:29  29/10/2025 11:54:02 DDDS.dll
29/10/2025 9:56:29  29/10/2025 11:54:02 BingASDS.dll
29/10/2025 9:56:29  29/10/2025 11:54:05 FilterDS.dll
29/10/2025 9:56:29  10/12/2025 21:50:52 MTFServer.dll
29/10/2025 9:56:29  29/10/2025 11:53:58 SDDS.dll
29/10/2025 9:56:29  29/10/2025 11:53:59 JpnServiceDS.dll
29/10/2025 9:56:29  29/10/2025 11:53:59 navshutdown.dll
29/10/2025 9:56:29  10/12/2025 21:50:59 NaturalLanguage6.dll
29/10/2025 9:56:29  10/12/2025 10:41:25 NcdAutoSetup.dll
29/10/2025 9:56:29  10/12/2025 21:50:10 ncrypt.dll
29/10/2025 9:56:29  10/12/2025 21:50:10 PCPKsp.dll
29/10/2025 9:56:29  10/12/2025 21:50:55 ncryptprov.dll
29/10/2025 9:56:29  29/10/2025 11:53:57 NetworkBindingEngineMigPlugin.dll
29/10/2025 9:56:29  10/12/2025 0:28:50  nduprov.dll
29/10/2025 9:56:29  10/12/2025 21:50:15 netapi32.dll
29/10/2025 9:56:29  10/12/2025 10:41:25 netman.dll
29/10/2025 9:56:29  29/10/2025 11:54:02 netplwiz.dll
29/10/2025 9:56:29  27/11/2025 12:54:14 netshell.dll
29/10/2025 9:56:29  29/10/2025 13:05:53 nettracehelper.dll
29/10/2025 9:56:29  29/10/2025 11:54:06 correngine.dll
29/10/2025 9:56:29  29/10/2025 13:05:58 nettrace.dll
29/10/2025 9:56:29  10/12/2025 21:50:28 FWPUCLNT.DLL
29/10/2025 9:56:29  10/12/2025 10:41:25 BFE.DLL
29/10/2025 9:56:29  10/12/2025 21:51:59 NetSetupSvc.dll
29/10/2025 9:56:29  10/12/2025 10:41:25 IKEEXT.DLL
29/10/2025 9:56:29  10/12/2025 21:51:59 NetSetupApi.dll
29/10/2025 9:56:29  10/12/2025 21:50:12 NetSetupEngine.dll
29/10/2025 9:56:29  02/12/2025 12:09:08 ndfapi.dll
29/10/2025 9:56:29  10/12/2025 10:41:25 ncbservice.dll
29/10/2025 9:56:29  10/12/2025 21:50:11 NetworkIcon.dll
29/10/2025 9:56:29  10/12/2025 13:27:02 Windows.Networking.dll
29/10/2025 9:56:29  10/12/2025 21:51:00 OnDemandConnRouteHelper.dll
29/10/2025 9:56:29  10/12/2025 21:52:13 Windows.Networking.BackgroundTransfer.dll
29/10/2025 9:56:29  10/12/2025 21:50:28 Windows.Networking.Connectivity.dll
29/10/2025 9:56:29  10/12/2025 21:51:27 Windows.Networking.HostName.dll
29/10/2025 9:56:29  29/10/2025 11:54:04 iasacct.dll
29/10/2025 9:56:29  10/12/2025 10:36:01 nlmproxy.dll
29/10/2025 9:56:29  10/12/2025 11:25:47 Windows.Networking.Sockets.PushEnabledApplication.dll
29/10/2025 9:56:29  27/11/2025 12:53:46 nlmsprep.dll
29/10/2025 9:56:29  10/12/2025 21:55:52 nlaapi.dll
29/10/2025 9:56:29  10/12/2025 21:50:54 ncsi.dll
29/10/2025 9:56:29  10/12/2025 14:20:12 netprofmsvc.dll
29/10/2025 9:56:29  10/12/2025 0:28:50  lltdsvc.dll
29/10/2025 9:56:29  29/10/2025 11:53:56 lltdapi.dll
29/10/2025 9:56:29  10/12/2025 21:50:11 NetworkUXBroker.dll
29/10/2025 9:56:29  10/12/2025 21:50:12 EthernetMediaManager.dll
29/10/2025 9:56:29  10/12/2025 0:28:50  MBMediaManager.dll
29/10/2025 9:56:29  10/12/2025 21:50:12 WlanMediaManager.dll
29/10/2025 9:56:29  10/12/2025 10:41:25 SEMgrSvc.dll
29/10/2025 9:56:29  10/12/2025 21:51:07 newdev.dll
29/10/2025 9:56:29  10/12/2025 21:51:14 nlansp_c.dll
29/10/2025 9:56:29  10/12/2025 13:56:09 NotificationIntelligencePlatform.dll
29/10/2025 9:56:29  10/12/2025 11:19:52 NPSMDesktopProvider.dll
29/10/2025 9:56:29  10/12/2025 11:29:44 ntdll.dll
29/10/2025 9:56:29  10/12/2025 21:51:25 ntlanman.dll
29/10/2025 9:56:29  08/12/2025 18:38:54 offreg.dll
29/10/2025 9:56:29  10/12/2025 21:50:58 cscui.dll
29/10/2025 9:56:29  10/12/2025 21:51:03 cscsvc.dll
29/10/2025 9:56:30  10/12/2025 21:50:10 oleaut32.dll
29/10/2025 9:56:30  10/12/2025 10:41:25 BthAvctpSvc.dll
29/10/2025 9:56:30  10/12/2025 21:50:57 oleacc.dll
29/10/2025 9:56:30  10/12/2025 0:28:51  BthAvrcp.dll
29/10/2025 9:56:30  10/12/2025 10:41:25 BTAGService.dll
29/10/2025 9:56:30  10/12/2025 10:41:25 das.dll
29/10/2025 9:56:30  10/12/2025 21:55:52 deviceassociation.dll
29/10/2025 9:56:30  10/12/2025 21:50:11 InputHost.dll
29/10/2025 9:56:30  09/12/2025 23:34:10 AuthBroker.dll
29/10/2025 9:56:30  10/12/2025 14:20:09 ISM.dll
29/10/2025 9:56:30  10/12/2025 21:50:12 OneCoreCommonProxyStub.dll
29/10/2025 9:56:30  10/12/2025 0:28:51  Microsoft.Bluetooth.Audio.dll
29/10/2025 9:56:30  10/12/2025 0:28:51  onex.dll
29/10/2025 9:56:30  10/12/2025 21:50:12 OneCoreUAPCommonProxyStub.dll
29/10/2025 9:56:30  10/12/2025 11:25:35 opengl32.dll
29/10/2025 9:56:30  29/10/2025 11:53:59 zipcontainer.dll
29/10/2025 9:56:30  06/11/2025 13:11:32 WpcWebFilter.dll
29/10/2025 9:56:30  10/12/2025 11:26:14 WpcDesktopMonSvc.dll
29/10/2025 9:56:30  10/12/2025 0:28:51  Wpc.dll
29/10/2025 9:56:30  10/12/2025 13:43:16 pcwutl.dll
29/10/2025 9:56:30  10/12/2025 21:50:10 umpdc.dll
29/10/2025 9:56:30  29/10/2025 11:54:05 PasswordEnrollmentManager.dll
29/10/2025 9:56:30  10/12/2025 11:24:13 PeerDistCleaner.dll
29/10/2025 9:56:30  29/10/2025 11:54:00 PeerDistHttpTrans.dll
29/10/2025 9:56:30  10/12/2025 21:51:04 PeerDistSvc.dll
29/10/2025 9:56:30  06/11/2025 13:11:42 PeerDistWSDDiscoProv.dll
29/10/2025 9:56:30  29/10/2025 11:53:56 PeerDistCacheProvider.dll
29/10/2025 9:56:30  03/12/2025 11:59:51 PeerDistSh.dll
29/10/2025 9:56:30  29/10/2025 11:54:04 PeopleBand.dll
29/10/2025 9:56:30  10/12/2025 10:41:26 PenService.dll
29/10/2025 9:56:30  29/10/2025 11:54:02 PerceptionSimulationManager.dll
29/10/2025 9:56:30  18/11/2025 10:59:29 perfnet.dll
29/10/2025 9:56:30  02/12/2025 8:54:37  perfdisk.dll
29/10/2025 9:56:30  10/12/2025 11:28:28 perfproc.dll
29/10/2025 9:56:30  10/12/2025 21:51:04 perfos.dll
29/10/2025 9:56:31  04/12/2025 11:24:23 pdhui.dll
29/10/2025 9:56:31  10/12/2025 21:51:17 pdh.dll
29/10/2025 9:56:31  10/12/2025 10:41:25 pla.dll
29/10/2025 9:56:31  10/12/2025 10:37:27 wdc.dll
29/10/2025 9:56:31  27/11/2025 12:54:44 wvc.dll
29/10/2025 9:56:31  29/10/2025 11:54:02 PersonalizationCSP.dll
29/10/2025 9:56:31  08/12/2025 18:39:42 PerformanceTraceHandler.dll
29/10/2025 9:56:31  29/10/2025 13:06:00 WMPhoto.dll
29/10/2025 9:56:31  10/12/2025 21:50:12 PhotoMetadataHandler.dll
29/10/2025 9:56:31  06/11/2025 13:11:31 Windows.UI.PicturePassword.dll
29/10/2025 9:56:31  29/10/2025 11:53:58 PktMonApi.dll
29/10/2025 9:56:31  29/10/2025 11:53:59 Windows.Internal.PlatformExtension.DevicePickerExperience.dll
29/10/2025 9:56:31  10/12/2025 21:50:54 PlaySndSrv.dll
29/10/2025 9:56:31  06/11/2025 13:11:34 Windows.Internal.PlatformExtension.MiracastBannerExperience.dll
29/10/2025 9:56:31  10/12/2025 21:51:25 PlayToDevice.dll
29/10/2025 9:56:31  10/12/2025 21:51:13 plutonapi.dll
29/10/2025 9:56:31  29/10/2025 11:54:05 plutonksp.dll
29/10/2025 9:56:31  08/12/2025 18:39:43 plutontasks.dll
29/10/2025 9:56:31  29/10/2025 11:54:00 PlayToReceiver.dll
29/10/2025 9:56:31  08/12/2025 18:39:42 sppnp.dll
29/10/2025 9:56:31  02/12/2025 12:40:19 devmgr.dll
29/10/2025 9:56:31  29/10/2025 11:54:02 Windows.Devices.Portable.dll
29/10/2025 9:56:31  27/11/2025 12:54:51 Windows.System.Power.Thermal.dll
29/10/2025 9:56:31  18/11/2025 10:35:39 Windows.Internal.PredictionUnit.dll
29/10/2025 9:56:31  27/11/2025 12:54:04 APMonUI.dll
29/10/2025 9:56:31  10/12/2025 0:28:53  APMon.dll
29/10/2025 9:56:31  10/12/2025 11:24:55 bidispl.dll
29/10/2025 9:56:31  04/12/2025 11:24:44 puiapi.dll
29/10/2025 9:56:31  23/11/2025 14:39:19 prnntfy.dll
29/10/2025 9:56:31  27/11/2025 12:54:55 DafPrintProvider.dll
29/10/2025 9:56:31  23/11/2025 14:37:20 printui.dll
29/10/2025 9:56:31  10/12/2025 21:50:59 prnfldr.dll
29/10/2025 9:56:31  27/11/2025 12:54:09 inetppui.dll
29/10/2025 9:56:31  10/12/2025 10:41:25 PrintDeviceConfigurationService.dll
29/10/2025 9:56:31  10/12/2025 0:28:53  inetpp.dll
29/10/2025 9:56:31  29/10/2025 11:54:02 oleprn.dll
29/10/2025 9:56:31  10/12/2025 0:28:53  usbmon.dll
29/10/2025 9:56:31  29/10/2025 11:54:05 XpsToPclmConverter.dll
29/10/2025 9:56:31  29/10/2025 11:54:04 XpsToTiffConverter.dll
29/10/2025 9:56:31  27/11/2025 12:54:39 XpsToPwgrConverter.dll
29/10/2025 9:56:31  29/10/2025 11:53:57 PrintRenderAPIHost.DLL
29/10/2025 9:56:31  10/12/2025 14:17:01 prntvpt.dll
29/10/2025 9:56:31  10/12/2025 10:41:25 PrintScanBrokerService.dll
29/10/2025 9:56:31  10/12/2025 0:28:53  PrintIsolationProxy.dll
29/10/2025 9:56:31  10/12/2025 0:28:53  spoolss.dll
29/10/2025 9:56:31  29/10/2025 11:54:00 FaxPrinterInstaller.dll
29/10/2025 9:56:31  29/10/2025 11:54:02 ModernPrintConfigHelper.dll
29/10/2025 9:56:31  10/12/2025 14:17:01 localspl.dll
29/10/2025 9:56:31  10/12/2025 11:24:13 printfilterpipelineprxy.dll
29/10/2025 9:56:31  29/10/2025 11:53:56 tcpmonui.dll
29/10/2025 9:56:31  10/12/2025 0:28:53  win32spl.dll
29/10/2025 9:56:31  10/12/2025 0:28:53  tcpmon.dll
29/10/2025 9:56:31  29/10/2025 11:54:04 Windows.Graphics.Printing.ProtectedPrint.dll
29/10/2025 9:56:31  29/10/2025 11:53:56 WindowsProtectedPrintConfiguration.dll
29/10/2025 9:56:31  10/12/2025 0:28:53  VirtualMon.dll
29/10/2025 9:56:31  29/10/2025 11:53:57 UPPrinterInstallsCSP.dll
29/10/2025 9:56:31  27/11/2025 12:54:51 Windows.Graphics.Printing.dll
29/10/2025 9:56:31  10/12/2025 11:25:15 Windows.Graphics.Printing.Workflow.Native.dll
29/10/2025 9:56:31  10/12/2025 14:17:01 Print.PrintSupport.Source.dll
29/10/2025 9:56:31  29/10/2025 11:54:01 Print.Workflow.Source.dll
29/10/2025 9:56:31  29/10/2025 11:54:02 Windows.Graphics.Printing.Workflow.dll
29/10/2025 9:56:31  10/12/2025 10:41:26 PrintWorkflowService.dll
29/10/2025 9:56:31  29/10/2025 11:54:00 PrintWSDAHost.dll
29/10/2025 9:56:31  29/10/2025 11:54:03 XpsPrint.dll
29/10/2025 9:56:31  29/10/2025 11:54:04 XpsDocumentTargetPrint.dll
29/10/2025 9:56:31  10/12/2025 21:50:10 profapi.dll
29/10/2025 9:56:31  10/12/2025 14:20:12 profsvc.dll
29/10/2025 9:56:31  10/12/2025 21:50:10 propsys.dll
29/10/2025 9:56:31  10/12/2025 21:56:21 provisioningcsp.dll
29/10/2025 9:56:31  19/11/2025 10:12:45 provengine.dll
29/10/2025 9:56:31  19/11/2025 10:12:44 provops.dll
29/10/2025 9:56:31  19/11/2025 10:12:54 provhandlers.dll
29/10/2025 9:56:31  29/10/2025 11:54:04 ProvPluginEng.dll
29/10/2025 9:56:31  29/10/2025 11:54:01 provmigrate.dll
29/10/2025 9:56:31  19/11/2025 10:12:54 provplatformdesktop.dll
29/10/2025 9:56:31  10/12/2025 11:24:34 ProximityService.dll
29/10/2025 9:56:31  10/12/2025 0:28:53  ProximityServicePal.dll
29/10/2025 9:56:31  10/12/2025 21:56:21 wpx.dll
29/10/2025 9:56:31  03/11/2025 20:35:59 Windows.Networking.Proximity.dll
29/10/2025 9:56:31  10/12/2025 0:28:53  psmsrv.dll
29/10/2025 9:56:31  10/12/2025 21:50:55 wpnclient.dll
29/10/2025 9:56:31  10/12/2025 21:50:54 wpncore.dll
29/10/2025 9:56:31  10/12/2025 21:50:55 wpnapps.dll
29/10/2025 9:56:31  10/12/2025 11:25:14 wpnprv.dll
29/10/2025 9:56:31  10/12/2025 10:41:26 wpnservice.dll
29/10/2025 9:56:31  10/12/2025 0:28:53  wpnsruprov.dll
29/10/2025 9:56:31  10/12/2025 13:41:17 qwave.dll
29/10/2025 9:56:32  29/10/2025 11:53:56 RemoteRemediationCSP.dll
29/10/2025 9:56:32  10/12/2025 10:41:25 regsvc.dll
29/10/2025 9:56:32  10/12/2025 21:51:04 rdpcorets.dll
29/10/2025 9:56:32  10/12/2025 0:28:54  rdpbase.dll
29/10/2025 9:56:32  10/12/2025 0:28:54  rdpserverbase.dll
29/10/2025 9:56:32  10/12/2025 10:35:22 RESAMPLEDMO.DLL
29/10/2025 9:56:32  10/12/2025 21:50:54 rmclient.dll
29/10/2025 9:56:32  29/10/2025 11:53:59 SettingsHandlers_Resume.dll
29/10/2025 9:56:32  10/12/2025 0:28:54  PsmServiceExtHost.dll
29/10/2025 9:56:32  29/10/2025 11:54:00 RjvMDMConfig.dll
29/10/2025 9:56:32  10/12/2025 21:50:56 RstrtMgr.dll
29/10/2025 9:56:32  10/12/2025 10:41:25 RDXService.dll
29/10/2025 9:56:32  10/12/2025 10:41:25 RpcEpMap.dll
29/10/2025 9:56:32  10/12/2025 21:56:15 rpcrt4.dll
29/10/2025 9:56:32  29/10/2025 11:53:59 rpcnsh.dll
29/10/2025 9:56:32  10/12/2025 0:28:54  RpcRtRemote.dll
29/10/2025 9:56:32  10/12/2025 21:50:12 rsaenh.dll
29/10/2025 9:56:32  10/12/2025 21:50:10 RTWorkQ.dll
29/10/2025 9:56:33  29/10/2025 11:53:57 Windows.Media.BackgroundMediaPlayback.dll
29/10/2025 9:56:33  10/12/2025 21:50:12 Windows.Media.dll
29/10/2025 9:56:33  29/10/2025 11:54:05 Windows.Media.Playback.BackgroundMediaPlayer.dll
29/10/2025 9:56:33  08/12/2025 21:06:51 Windows.Media.Playback.MediaPlayer.dll
29/10/2025 9:56:33  09/12/2025 23:34:10 Windows.System.Profile.HardwareId.dll
29/10/2025 9:56:34  10/12/2025 21:52:02 Windows.System.Profile.SystemId.dll
29/10/2025 9:56:34  08/12/2025 20:51:41 Windows.System.Profile.SystemManufacturers.dll
29/10/2025 9:56:34  10/12/2025 10:41:25 sdrsvc.dll
29/10/2025 9:56:34  27/11/2025 12:53:34 sdengin2.dll
29/10/2025 9:56:34  10/12/2025 11:23:55 sdiageng.dll
29/10/2025 9:56:34  10/12/2025 13:43:23 scrrun.dll
29/10/2025 9:56:35  29/10/2025 11:54:06 Chakradiag.dll
29/10/2025 9:56:35  10/12/2025 0:28:55  Chakra.dll
29/10/2025 9:56:35  29/10/2025 11:54:02 jscript9diag.dll
29/10/2025 9:56:35  10/12/2025 14:17:01 jscript.dll
29/10/2025 9:56:35  11/11/2025 13:34:09 jscript9.dll
29/10/2025 9:56:35  10/12/2025 21:51:17 vbscript.dll
29/10/2025 9:56:35  10/12/2025 14:17:01 jscript9Legacy.dll
29/10/2025 9:56:35  29/10/2025 13:05:53 wsepno.dll
29/10/2025 9:56:35  10/12/2025 21:56:15 sechost.dll
29/10/2025 9:56:35  10/12/2025 21:56:23 fvecerts.dll
29/10/2025 9:56:35  27/11/2025 12:53:58 fveapibase.dll
29/10/2025 9:56:35  10/12/2025 21:50:16 fveapi.dll
29/10/2025 9:56:35  09/12/2025 11:57:02 fvewiz.dll
29/10/2025 9:56:35  29/10/2025 11:53:58 fveskybackup.dll
29/10/2025 9:56:35  10/12/2025 10:41:25 bdesvc.dll
29/10/2025 9:56:35  10/12/2025 21:51:04 fveui.dll
29/10/2025 9:56:35  27/11/2025 12:54:19 aadauthhelper.dll
29/10/2025 9:56:35  10/12/2025 13:06:30 aadcloudap.dll
29/10/2025 9:56:35  10/12/2025 21:50:28 Windows.Security.Authentication.OnlineId.dll
29/10/2025 9:56:35  29/10/2025 13:05:44 auditcse.dll
29/10/2025 9:56:35  10/12/2025 21:51:04 aadtb.dll
29/10/2025 9:56:35  10/12/2025 21:51:07 authz.dll
29/10/2025 9:56:35  10/12/2025 21:50:12 winbio.dll
29/10/2025 9:56:35  10/12/2025 21:50:54 winbioext.dll
29/10/2025 9:56:35  10/12/2025 21:50:12 BioCredProv.dll
29/10/2025 9:56:36  27/11/2025 12:54:06 fingerprintcredential.dll
29/10/2025 9:56:36  10/12/2025 11:24:54 CertPolEng.dll
29/10/2025 9:56:36  10/12/2025 21:50:57 cflapi.dll
29/10/2025 9:56:36  10/12/2025 10:41:25 keyiso.dll
29/10/2025 9:56:36  10/12/2025 0:28:56  cloudAP.dll
29/10/2025 9:56:36  10/12/2025 0:28:56  TSpkg.dll
29/10/2025 9:56:36  10/12/2025 21:50:12 cxcredprov.dll
29/10/2025 9:56:36  10/12/2025 21:51:07 easwrt.dll
29/10/2025 9:56:36  10/12/2025 21:52:20 efswrt.dll
29/10/2025 9:56:36  10/12/2025 0:28:56  wdigest.dll
29/10/2025 9:56:36  29/10/2025 11:54:00 fidocredprov.dll
29/10/2025 9:56:36  10/12/2025 0:28:56  gmsaclient.dll
29/10/2025 9:56:36  10/12/2025 21:50:12 IDStore.dll
29/10/2025 9:56:36  10/12/2025 0:28:56  KerbClientShared.dll
29/10/2025 9:56:36  10/12/2025 0:28:56  iumcrypt.dll
29/10/2025 9:56:36  10/12/2025 0:28:56  MicrosoftAccountCloudAP.dll
29/10/2025 9:56:36  10/12/2025 0:28:56  negoexts.dll
29/10/2025 9:56:36  10/12/2025 10:41:25 NaturalAuth.dll
29/10/2025 9:56:36  10/12/2025 21:51:04 netlogon.dll
29/10/2025 9:56:36  10/12/2025 21:50:09 logoncli.dll
29/10/2025 9:56:36  10/12/2025 11:25:14 NgcCtnr.dll
29/10/2025 9:56:36  10/12/2025 21:50:12 ngccredprov.dll
29/10/2025 9:56:36  10/12/2025 21:50:54 cryptngc.dll
29/10/2025 9:56:36  14/11/2025 13:49:25 hmkd.dll
29/10/2025 9:56:36  10/12/2025 21:56:21 NgcProCsp.dll
29/10/2025 9:56:36  10/12/2025 10:41:25 NgcCtnrSvc.dll
29/10/2025 9:56:36  10/12/2025 21:50:12 ngckeyenum.dll
29/10/2025 9:56:36  10/12/2025 10:35:22 NgcIsoCtnr.dll
29/10/2025 9:56:36  10/12/2025 21:50:12 ngcksp.dll
29/10/2025 9:56:36  10/12/2025 0:28:56  ngctasks.dll
29/10/2025 9:56:36  10/12/2025 10:41:25 ngcsvc.dll
29/10/2025 9:56:36  10/12/2025 0:28:56  ngcutils.dll
29/10/2025 9:56:36  10/12/2025 21:51:04 ngcrecovery.dll
29/10/2025 9:56:36  29/10/2025 11:54:04 noise.dll
29/10/2025 9:56:36  10/12/2025 21:52:55 msv1_0.dll
29/10/2025 9:56:36  10/12/2025 21:52:55 NtlmShared.dll
29/10/2025 9:56:36  10/12/2025 0:28:56  pku2u.dll
29/10/2025 9:56:36  10/12/2025 21:50:10 ntmarta.dll
29/10/2025 9:56:36  10/12/2025 0:28:56  ngcpopkeysrv.dll
29/10/2025 9:56:36  10/12/2025 21:50:58 schannel.dll
29/10/2025 9:56:36  29/10/2025 11:54:01 devicengccredprov.dll
29/10/2025 9:56:36  10/12/2025 0:28:56  scecli.dll
29/10/2025 9:56:36  10/12/2025 0:28:56  scesrv.dll
29/10/2025 9:56:36  10/12/2025 21:51:07 sppcext.dll
29/10/2025 9:56:36  10/12/2025 21:56:21 pidgenx.dll
29/10/2025 9:56:36  10/12/2025 21:56:15 sppwinob.dll
29/10/2025 9:56:36  29/10/2025 11:54:03 LicensingDiagSpp.dll
29/10/2025 9:56:36  29/10/2025 11:53:57 DeviceReactivation.dll
29/10/2025 9:56:36  06/11/2025 13:11:46 EditionUpgradeManagerObj.dll
29/10/2025 9:56:36  03/11/2025 20:35:57 EditionUpgradeHelper.dll
29/10/2025 9:56:36  10/12/2025 13:45:44 LicensingWinRT.dll
29/10/2025 9:56:36  27/11/2025 12:54:37 sppcomapi.dll
29/10/2025 9:56:37  10/12/2025 0:28:57  ActivationVdev.dll
29/10/2025 9:56:37  29/10/2025 11:54:00 tbauth.dll
29/10/2025 9:56:37  10/12/2025 21:50:54 Windows.Security.Authentication.Web.Core.dll
29/10/2025 9:56:37  10/12/2025 10:41:25 TokenBroker.dll
29/10/2025 9:56:37  29/10/2025 11:54:03 TokenBrokerUI.dll
29/10/2025 9:56:37  29/10/2025 11:53:58 TrustedSignalCredProv.dll
29/10/2025 9:56:37  10/12/2025 10:36:25 Windows.Security.Credentials.UI.UserConsentVerifier.dll
29/10/2025 9:56:37  27/11/2025 12:53:32 TpmEngUM.dll
29/10/2025 9:56:37  29/10/2025 11:54:01 TpmEngUM138.dll
29/10/2025 9:56:37  10/12/2025 10:41:25 vaultsvc.dll
29/10/2025 9:56:37  27/11/2025 12:54:35 AuthHostProxy.dll
29/10/2025 9:56:37  27/11/2025 12:54:43 WudfSMCClassExt.dll
29/10/2025 9:56:37  10/12/2025 21:50:55 webauthn.dll
29/10/2025 9:56:37  10/12/2025 21:51:07 wscapi.dll
29/10/2025 9:56:37  10/12/2025 10:41:26 wscsvc.dll
29/10/2025 9:56:37  10/12/2025 10:37:27 wsecedit.dll
29/10/2025 9:56:37  10/12/2025 10:41:25 SensorService.dll
29/10/2025 9:56:37  10/12/2025 0:28:57  SensorsUtilsV2.dll
29/10/2025 9:56:37  10/12/2025 0:28:57  SensorsNativeApi.V2.dll
29/10/2025 9:56:37  29/10/2025 11:53:57 Windows.Internal.Devices.Sensors.dll
29/10/2025 9:56:37  10/12/2025 21:50:12 Windows.Devices.Sensors.dll
29/10/2025 9:56:37  10/12/2025 21:52:12 Windows.Services.TargetedContent.dll
29/10/2025 9:56:37  10/12/2025 21:50:16 ServicingCommon.dll
29/10/2025 9:56:37  29/10/2025 11:53:57 SettingsHandlers_A9.dll
29/10/2025 9:56:37  29/10/2025 11:53:56 SetNetworkLocation.dll
29/10/2025 9:56:37  10/12/2025 21:50:58 SettingsHandlers_Backup.dll
29/10/2025 9:56:37  29/10/2025 11:54:02 spwizeng.dll
29/10/2025 9:56:37  10/12/2025 10:41:25 ipnathlp.dll
29/10/2025 9:56:37  10/12/2025 10:41:25 Windows.SharedPC.AccountManager.dll
29/10/2025 9:56:37  10/12/2025 21:56:22 setupapi.dll
29/10/2025 9:56:37  10/12/2025 21:50:59 shdocvw.dll
29/10/2025 9:56:37  10/12/2025 21:50:57 ApplicationFrame.dll
29/10/2025 9:56:37  10/12/2025 21:50:55 ControlCenter.dll
29/10/2025 9:56:37  29/10/2025 11:54:02 Family.Cache.dll
29/10/2025 9:56:37  29/10/2025 11:53:59 Family.SyncEngine.dll
29/10/2025 9:56:37  29/10/2025 11:54:03 OobeWv2Host.dll
29/10/2025 9:56:37  29/10/2025 11:54:00 shsetup.dll
29/10/2025 9:56:37  29/10/2025 11:53:59 RDXTaskFactory.dll
29/10/2025 9:56:37  29/10/2025 11:54:01 UXFrame.dll
29/10/2025 9:56:37  10/12/2025 11:23:55 Themes.SsfDownload.ScheduledTask.dll
29/10/2025 9:56:37  10/12/2025 21:50:57 WinUICohabitation.dll
29/10/2025 9:56:37  29/10/2025 11:53:58 TranscodeWallpaper.dll
29/10/2025 9:56:38  10/12/2025 21:50:58 ShellCommonCommonProxyStub.dll
29/10/2025 9:56:38  10/12/2025 21:50:59 shlwapi.dll
29/10/2025 9:56:38  10/12/2025 14:20:11 shsvcs.dll
29/10/2025 9:56:38  10/12/2025 21:50:58 shutdownux.dll
29/10/2025 9:56:38  29/10/2025 13:05:52 shwebsvc.dll
29/10/2025 9:56:38  10/12/2025 0:00:01  Windows.Internal.Signals.dll
29/10/2025 9:56:38  10/12/2025 14:20:15 SimCfg.dll
29/10/2025 9:56:38  03/11/2025 20:39:23 scksp.dll
29/10/2025 9:56:38  10/12/2025 11:24:34 eapsimextdesktop.dll
29/10/2025 9:56:38  29/10/2025 11:54:06 SmartActionPlatform.dll
29/10/2025 9:56:38  10/12/2025 10:41:25 srvsvc.dll
29/10/2025 9:56:38  10/12/2025 11:02:46 sscore.dll
29/10/2025 9:56:38  11/11/2025 10:00:29 smbwmiv2.dll
29/10/2025 9:56:38  10/12/2025 21:51:02 MsSpellCheckingFacility.dll
29/10/2025 9:56:38  29/10/2025 13:05:56 SRH.dll
29/10/2025 9:56:38  10/12/2025 0:28:59  srumsvc.dll
29/10/2025 9:56:38  18/11/2025 18:52:04 energyprov.dll
29/10/2025 9:56:38  10/12/2025 0:28:59  eeprov.dll
29/10/2025 9:56:38  10/12/2025 0:28:59  vfuprov.dll
29/10/2025 9:56:39  10/12/2025 21:50:55 StartTileData.dll
29/10/2025 9:56:39  10/12/2025 21:50:55 Windows.Storage.Search.dll
29/10/2025 9:56:39  10/12/2025 11:02:46 storagewmi.dll
29/10/2025 9:56:39  10/12/2025 21:51:05 StorageUsage.dll
29/10/2025 9:56:39  10/12/2025 10:41:25 StorSvc.dll
29/10/2025 9:56:39  04/12/2025 11:24:21 SpaceControl.dll
29/10/2025 9:56:39  10/12/2025 10:41:25 LicenseManagerSvc.dll
29/10/2025 9:56:39  10/12/2025 21:51:05 Windows.ApplicationModel.Store.dll
29/10/2025 9:56:39  10/12/2025 21:55:55 PushToInstall.dll
29/10/2025 9:56:39  10/12/2025 21:50:55 LicenseManagerApi.dll
29/10/2025 9:56:39  29/10/2025 11:54:00 Windows.ApplicationModel.Store.TestingFramework.dll
29/10/2025 9:56:39  03/12/2025 11:59:41 sud.dll
29/10/2025 9:56:39  29/10/2025 13:05:57 PortableDeviceSyncProvider.dll
29/10/2025 9:56:39  29/10/2025 11:53:57 SyncSettings.dll
29/10/2025 9:56:39  27/11/2025 12:53:44 rdbui.dll
29/10/2025 9:56:39  29/10/2025 11:54:05 Windows.System.RemoteDesktop.dll
29/10/2025 9:56:39  10/12/2025 10:41:25 sysmain.dll
29/10/2025 9:56:39  29/10/2025 11:54:06 Windows.System.SystemManagement.dll
29/10/2025 9:56:39  29/10/2025 11:53:57 ResetEngOnline.dll
29/10/2025 9:56:39  19/11/2025 10:12:54 ResetEngine.dll
29/10/2025 9:56:39  29/10/2025 11:54:06 srwmi.dll
29/10/2025 9:56:39  10/12/2025 13:45:43 AudioHandlers.dll
29/10/2025 9:56:39  10/12/2025 21:50:55 SystemSettings.DataModel.dll
29/10/2025 9:56:39  27/11/2025 12:54:19 SystemSettings.DeviceEncryptionHandlers.dll
29/10/2025 9:56:39  29/10/2025 11:53:59 NetworkDesktopSettings.dll
29/10/2025 9:56:39  24/11/2025 19:33:42 SystemSettings.Handlers.dll
29/10/2025 9:56:39  10/12/2025 21:55:52 NetworkMobileSettings.dll
29/10/2025 9:56:39  29/10/2025 11:54:00 PinEnrollmentHelper.dll
29/10/2025 9:56:39  10/12/2025 21:55:52 AboutSettingsHandlers.dll
29/10/2025 9:56:39  10/12/2025 13:45:43 SettingsHandlers_Accessibility.dll
29/10/2025 9:56:39  29/10/2025 11:54:05 SettingsHandlers_AdvertisingId.dll
29/10/2025 9:56:40  29/10/2025 11:53:59 SettingsHandlers_AppExecutionAlias.dll
29/10/2025 9:56:40  29/10/2025 11:53:58 SettingsHandlers_Authentication.dll
29/10/2025 9:56:40  29/10/2025 11:54:01 SettingsHandlers_AppControl.dll
29/10/2025 9:56:40  24/11/2025 19:33:42 BluetoothDesktopHandlers.dll
29/10/2025 9:56:40  29/10/2025 11:54:02 SettingsHandlers_AssignedAccess.dll
29/10/2025 9:56:40  29/10/2025 11:54:01 SettingsHandlers_BackgroundApps.dll
29/10/2025 9:56:40  29/10/2025 11:54:05 SettingsHandlers_BatteryUsage.dll
29/10/2025 9:56:40  10/12/2025 13:45:43 SettingsHandlers_Camera.dll
29/10/2025 9:56:40  29/10/2025 11:54:03 SettingsHandlers_Clipboard.dll
29/10/2025 9:56:40  29/10/2025 11:53:56 SettingsHandlers_ClosedCaptioning.dll
29/10/2025 9:56:40  29/10/2025 11:53:56 SettingsHandlers_Cortana.dll
29/10/2025 9:56:40  29/10/2025 11:53:58 SettingsHandlers_ContentDeliveryManager.dll
29/10/2025 9:56:40  29/10/2025 11:53:56 SettingsHandlers_Copilot.dll
29/10/2025 9:56:40  27/11/2025 12:53:45 DeveloperOptionsSettingsHandlers.dll
29/10/2025 9:56:40  10/12/2025 21:55:52 SettingsHandlers_Devices.dll
29/10/2025 9:56:40  10/12/2025 13:45:43 SettingsHandlers_Display.dll
29/10/2025 9:56:40  29/10/2025 11:53:58 SettingsHandlers_DesktopDisplay.dll
29/10/2025 9:56:40  27/11/2025 12:54:44 SettingsExtensibilityHandlers.dll
29/10/2025 9:56:40  06/11/2025 13:11:46 SettingsHandlers_Fonts.dll
29/10/2025 9:56:40  10/12/2025 11:24:18 SettingsHandlers_Flights.dll
29/10/2025 9:56:40  29/10/2025 11:54:03 SettingsHandlers_ForceSync.dll
29/10/2025 9:56:40  06/11/2025 9:20:15  SettingsHandlers_Geolocation.dll
29/10/2025 9:56:40  29/10/2025 11:53:58 SettingsHandlers_Gaming.dll
29/10/2025 9:56:40  29/10/2025 11:54:05 SettingsHandlers_HumanPresence.dll
29/10/2025 9:56:40  29/10/2025 11:54:05 SettingsHandlers_Gpu.dll
29/10/2025 9:56:40  29/10/2025 11:54:03 SettingsHandlers_InstalledUpdates.dll
29/10/2025 9:56:40  29/10/2025 11:54:00 SettingsHandlers_InputPersonalization.dll
29/10/2025 9:56:40  29/10/2025 11:54:00 SettingsHandlers_IME.dll
29/10/2025 9:56:40  29/10/2025 11:54:00 SettingsHandlers_Lighting.dll
29/10/2025 9:56:40  29/10/2025 11:54:03 SettingsHandlers_Keyboard.dll
29/10/2025 9:56:40  29/10/2025 11:53:56 SettingsHandlers_Language.dll
29/10/2025 9:56:40  29/10/2025 11:54:03 SettingsHandlers_Maps.dll
29/10/2025 9:56:40  27/11/2025 12:54:12 SettingsHandlers_Mouse.dll
29/10/2025 9:56:40  29/10/2025 11:54:04 SettingsHandlers_Notifications.dll
29/10/2025 9:56:40  10/12/2025 21:55:51 SettingsHandlers_nt.dll
29/10/2025 9:56:40  29/10/2025 13:05:45 OneBackupHandler.dll
29/10/2025 9:56:40  10/12/2025 13:45:43 SettingsHandlers_OneCore_BatterySaver.dll
29/10/2025 9:56:40  29/10/2025 11:54:03 SettingsHandlers_OneDriveBackup.dll
29/10/2025 9:56:40  29/10/2025 11:54:05 SettingsHandlers_PCDisplayRemote.dll
29/10/2025 9:56:40  29/10/2025 11:54:02 SettingsHandlers_OptionalFeatures.dll
29/10/2025 9:56:40  10/12/2025 11:24:22 SettingsHandlers_Pen.dll
29/10/2025 9:56:40  10/12/2025 13:45:43 SettingsHandlers_PCDisplay.dll
29/10/2025 9:56:40  29/10/2025 11:53:56 SettingsHandlers_ManagePhone.dll
29/10/2025 9:56:40  29/10/2025 11:54:03 SettingsHandlers_OneCore_PowerAndSleep.dll
29/10/2025 9:56:40  29/10/2025 11:54:03 ProvisioningHandlers.dll
29/10/2025 9:56:40  02/12/2025 12:41:02 SystemSettings.SettingsExtensibility.dll
29/10/2025 9:56:40  10/12/2025 13:45:43 SettingsHandlers_SharedExperiences_Rome.dll
29/10/2025 9:56:40  29/10/2025 11:53:57 SettingsHandlers_Region.dll
29/10/2025 9:56:40  29/10/2025 11:54:02 SettingsHandlers_Startup.dll
29/10/2025 9:56:40  29/10/2025 11:54:02 SettingsHandlers_Troubleshoot.dll
29/10/2025 9:56:40  10/12/2025 11:24:37 SettingsHandlers_Touch.dll
29/10/2025 9:56:40  29/10/2025 11:54:01 SettingsHandlers_SIUF.dll
29/10/2025 9:56:40  29/10/2025 11:54:01 SettingsHandlers_Storage.dll
29/10/2025 9:56:40  08/12/2025 18:19:26 SettingsHandlers_StorageSense.dll
29/10/2025 9:56:40  02/12/2025 12:46:54 UsbSettingsHandlers.dll
29/10/2025 9:56:40  29/10/2025 11:54:05 SettingsHandlers_User.dll
29/10/2025 9:56:40  10/12/2025 11:25:20 SettingsHandlers_UserAccount.dll
29/10/2025 9:56:40  29/10/2025 11:53:57 SettingsHandlers_WorkAccess.dll
29/10/2025 9:56:40  06/11/2025 13:11:29 SystemSettings.UserAccountsHandlers.dll
29/10/2025 9:56:40  29/10/2025 11:54:02 SettingsHandlers_UserExperience.dll
29/10/2025 9:56:40  29/10/2025 11:54:04 VideoHandlers.dll
29/10/2025 9:56:40  29/10/2025 11:53:56 SettingsHandlers_UserIntent.dll
29/10/2025 9:56:40  06/11/2025 9:20:19  SystemSettingsThresholdAdminFlowUI.dll
29/10/2025 9:56:40  10/12/2025 21:50:55 ninput.dll
29/10/2025 9:56:40  29/10/2025 13:05:58 wisp.dll
29/10/2025 9:56:40  10/12/2025 10:41:25 tapisrv.dll
29/10/2025 9:56:40  10/12/2025 21:50:57 Taskbar.dll
29/10/2025 9:56:40  10/12/2025 13:05:13 schedsvc.dll
29/10/2025 9:56:40  18/11/2025 18:53:41 tcpipcfg.dll
29/10/2025 9:56:40  10/12/2025 21:50:12 IPHLPAPI.DLL
29/10/2025 9:56:40  29/10/2025 11:54:01 netiohlp.dll
29/10/2025 9:56:40  10/12/2025 21:50:28 DiagnosticDataSettings.dll
29/10/2025 9:56:40  10/12/2025 21:50:59 PhoneOm.dll
29/10/2025 9:56:40  10/12/2025 0:29:01  PhoneProviders.dll
29/10/2025 9:56:40  10/12/2025 21:50:59 Phoneutil.dll
29/10/2025 9:56:41  27/11/2025 12:54:03 tellib.dll
29/10/2025 9:56:41  10/12/2025 0:29:01  PhoneService.dll
29/10/2025 9:56:41  10/12/2025 11:25:08 PhonePlatformAbstraction.dll
29/10/2025 9:56:41  29/10/2025 13:05:44 rdplite.dll
29/10/2025 9:56:41  29/10/2025 13:05:44 RdpAvenc.dll
29/10/2025 9:56:41  29/10/2025 11:54:01 rdpsharercom.dll
29/10/2025 9:56:41  29/10/2025 11:53:57 tsgqec.dll
29/10/2025 9:56:41  10/12/2025 13:43:24 mstscax.dll
29/10/2025 9:56:41  29/10/2025 11:54:00 rdpviewerax.dll
29/10/2025 9:56:41  27/11/2025 12:54:39 tsmf.dll
29/10/2025 9:56:41  10/12/2025 21:51:03 lsm.dll
29/10/2025 9:56:41  10/12/2025 21:50:10 wtsapi32.dll
29/10/2025 9:56:41  10/12/2025 10:41:25 umrdp.dll
29/10/2025 9:56:41  27/11/2025 12:53:44 RdpDwmEncoder.dll
29/10/2025 9:56:41  10/12/2025 21:50:15 winsta.dll
29/10/2025 9:56:41  29/10/2025 11:53:58 rdsdwmdr.dll
29/10/2025 9:56:41  27/11/2025 12:53:50 RdpShellExt.dll
29/10/2025 9:56:41  10/12/2025 10:41:25 termsrv.dll
29/10/2025 9:56:41  10/12/2025 10:41:25 SessEnv.dll
29/10/2025 9:56:41  10/12/2025 13:43:18 tscfgwmi.dll
29/10/2025 9:56:41  10/12/2025 21:50:53 input.dll
29/10/2025 9:56:41  29/10/2025 13:05:54 TetheringMgr.dll
29/10/2025 9:56:41  10/12/2025 21:50:10 TextInputFramework.dll
29/10/2025 9:56:41  29/10/2025 11:54:05 mscandui.dll
29/10/2025 9:56:41  10/12/2025 0:29:02  msctf.dll
29/10/2025 9:56:41  10/12/2025 21:50:52 MsCtfMonitor.dll
29/10/2025 9:56:41  10/12/2025 21:52:24 msctfui.dll
29/10/2025 9:56:41  29/10/2025 11:53:59 softkbd.dll
29/10/2025 9:56:41  10/12/2025 21:50:52 msutb.dll
29/10/2025 9:56:41  29/10/2025 13:05:49 msctfuimanager.dll
29/10/2025 9:56:41  10/12/2025 11:25:20 themecpl.dll
29/10/2025 9:56:41  10/12/2025 10:41:25 themeservice.dll
29/10/2025 9:56:41  10/12/2025 21:55:52 themeui.dll
29/10/2025 9:56:41  10/12/2025 21:50:57 thumbcache.dll
29/10/2025 9:56:41  29/10/2025 13:05:43 ptpprov.dll
29/10/2025 9:56:41  10/12/2025 21:50:09 w32time.dll
29/10/2025 9:56:41  10/12/2025 0:29:02  SecureTimeAggregator.dll
29/10/2025 9:56:41  10/12/2025 10:41:25 TimeBrokerServer.dll
29/10/2025 9:56:41  10/12/2025 21:50:10 TpmCoreProvisioning.dll
29/10/2025 9:56:41  10/12/2025 21:50:10 tbs.dll
29/10/2025 9:56:41  29/10/2025 11:53:57 tsf3gip.dll
29/10/2025 9:56:41  10/12/2025 21:57:13 twext.dll
29/10/2025 9:56:41  10/12/2025 21:50:55 twinapi.dll
29/10/2025 9:56:41  10/12/2025 21:50:11 twinapi.appcore.dll
29/10/2025 9:56:41  10/12/2025 21:50:57 twinui.dll
29/10/2025 9:56:41  10/12/2025 21:50:55 twinui.appcore.dll
29/10/2025 9:56:41  10/12/2025 21:56:15 msvcp_win.dll
29/10/2025 9:56:41  10/12/2025 21:56:15 ucrtbase.dll
29/10/2025 9:56:41  10/12/2025 21:50:12 Windows.UI.BioFeedback.dll
29/10/2025 9:56:41  10/12/2025 0:29:02  Windows.UI.BlockedShutdown.dll
29/10/2025 9:56:42  10/12/2025 21:57:14 Windows.UI.Cred.dll
29/10/2025 9:56:42  06/11/2025 13:11:53 Windows.UI.Search.dll
29/10/2025 9:56:42  27/11/2025 12:53:28 Windows.UI.Shell.Internal.AdaptiveCards.dll
29/10/2025 9:56:42  10/12/2025 21:50:57 Windows.Internal.UI.Shell.WindowTabManager.dll
29/10/2025 9:56:42  10/12/2025 21:50:11 Windows.UI.Xaml.Phone.dll
29/10/2025 9:56:42  10/12/2025 21:50:11 Windows.UI.Xaml.Maps.dll
29/10/2025 9:56:42  10/12/2025 21:50:11 Windows.UI.Xaml.Controls.dll
29/10/2025 9:56:42  10/12/2025 21:50:51 UIAnimation.dll
29/10/2025 9:56:42  10/12/2025 21:50:28 utcutil.dll
29/10/2025 9:56:42  10/12/2025 14:08:42 diagtrack.dll
29/10/2025 9:56:42  10/12/2025 0:29:03  ubpm.dll
29/10/2025 9:56:42  29/10/2025 11:53:59 DuCsps.dll
29/10/2025 9:56:42  27/11/2025 12:53:49 UnionFSApi.dll
29/10/2025 9:56:42  10/12/2025 21:55:52 usoapi.dll
29/10/2025 9:56:42  10/12/2025 10:35:50 museuxdocked.dll
29/10/2025 9:56:42  10/12/2025 10:35:27 usosvc.dll
29/10/2025 9:56:42  10/12/2025 14:19:27 usodocked.dll
29/10/2025 9:56:42  10/12/2025 14:19:27 usocoreps.dll
29/10/2025 9:56:42  10/12/2025 10:35:50 MusUpdateHandlers.dll
29/10/2025 9:56:42  10/12/2025 10:35:50 MusUpdateHandlers1.dll
29/10/2025 9:56:42  10/12/2025 11:25:07 Windows.Management.Update.dll
29/10/2025 9:56:43  10/12/2025 21:55:52 updatepolicy.dll
29/10/2025 9:56:43  10/12/2025 21:51:36 upnp.dll
29/10/2025 9:56:43  10/12/2025 10:41:25 upnphost.dll
29/10/2025 9:56:43  10/12/2025 10:41:25 ssdpsrv.dll
29/10/2025 9:56:43  08/12/2025 18:39:10 usbceip.dll
29/10/2025 9:56:43  18/11/2025 18:52:11 UsbPmApi.dll
29/10/2025 9:56:43  29/10/2025 13:05:51 UserAccountControlSettings.dll
29/10/2025 9:56:43  10/12/2025 13:26:44 usercpl.dll
29/10/2025 9:56:43  10/12/2025 0:29:04  PimIndexMaintenance.dll
29/10/2025 9:56:43  29/10/2025 11:54:02 useractivitybroker.dll
29/10/2025 9:56:43  10/12/2025 21:52:55 Pimstore.dll
29/10/2025 9:56:43  10/12/2025 0:29:04  Unistore.dll
29/10/2025 9:56:43  27/11/2025 12:54:12 PeopleAPIs.dll
29/10/2025 9:56:43  10/12/2025 21:52:54 UserDataPlatformHelperUtil.dll
29/10/2025 9:56:43  10/12/2025 11:25:14 UserDataService.dll
29/10/2025 9:56:43  03/11/2025 20:36:55 ContactActivation.dll
29/10/2025 9:56:43  10/12/2025 21:50:11 dsreg.dll
29/10/2025 9:56:43  08/12/2025 18:40:08 dsregtask.dll
29/10/2025 9:56:43  10/12/2025 21:51:03 UserDeviceRegistration.dll
29/10/2025 9:56:43  03/11/2025 20:39:28 UserDeviceRegistration.Ngc.dll
29/10/2025 9:56:43  10/12/2025 21:50:10 userenv.dll
29/10/2025 9:56:43  10/12/2025 21:50:58 profext.dll
29/10/2025 9:56:43  10/12/2025 21:52:16 nsi.dll
29/10/2025 9:56:43  10/12/2025 10:41:25 nsisvc.dll
29/10/2025 9:56:43  10/12/2025 21:50:12 winnsi.dll
29/10/2025 9:56:43  10/12/2025 0:29:04  umpo-overrides.dll
29/10/2025 9:56:43  10/12/2025 0:29:04  umpodev.dll
29/10/2025 9:56:43  10/12/2025 14:19:27 umpo.dll
29/10/2025 9:56:43  10/12/2025 21:51:03 umpoext.dll
29/10/2025 9:56:43  10/12/2025 14:20:09 UXInit.dll
29/10/2025 9:56:43  10/12/2025 21:50:10 uxtheme.dll
29/10/2025 9:56:43  10/12/2025 13:41:18 msvproc.dll
29/10/2025 9:56:43  29/10/2025 11:54:02 TDLMigration.dll
29/10/2025 9:56:43  10/12/2025 21:51:40 vssapi.dll
29/10/2025 9:56:43  10/12/2025 21:55:52 WaaSAssessment.dll
29/10/2025 9:56:43  29/10/2025 11:54:01 WalletBackgroundServiceProxy.dll
29/10/2025 9:56:43  10/12/2025 14:20:05 wbiosrvc.dll
29/10/2025 9:56:43  10/12/2025 21:50:55 wcmapi.dll
29/10/2025 9:56:43  10/12/2025 0:29:04  wifidatacapabilityhandler.dll
29/10/2025 9:56:43  10/12/2025 0:29:04  wcmcsp.dll
29/10/2025 9:56:43  10/12/2025 0:29:04  cellulardatacapabilityhandler.dll
29/10/2025 9:56:43  03/11/2025 20:36:15 dafWCN.dll
29/10/2025 9:56:43  29/10/2025 13:05:58 wcnwiz.dll
29/10/2025 9:56:43  10/12/2025 0:29:04  WUDFx02000.dll
29/10/2025 9:56:43  10/12/2025 14:15:56 wcmsvc.dll
29/10/2025 9:56:44  10/12/2025 21:50:58 Windows.Web.Http.dll
29/10/2025 9:56:44  10/12/2025 21:50:15 webio.dll
29/10/2025 9:56:44  10/12/2025 21:51:36 WsmSvc.dll
29/10/2025 9:56:44  27/11/2025 12:54:13 WebcamUi.dll
29/10/2025 9:56:44  10/12/2025 21:55:52 WFDSConMgr.dll
29/10/2025 9:56:44  10/12/2025 21:50:59 webservices.dll
29/10/2025 9:56:44  10/12/2025 21:51:56 WiFiCloudStore.dll
29/10/2025 9:56:44  10/12/2025 13:45:43 WFDSConMgrSvc.dll
29/10/2025 9:56:44  10/12/2025 22:01:09 wifinetworkmanager.dll
29/10/2025 9:56:44  10/12/2025 11:54:13 WiFiDisplay.dll
29/10/2025 9:56:44  10/12/2025 21:56:21 wimgapi.dll
29/10/2025 9:56:44  10/12/2025 21:56:23 WindowsBackupAndRestoreCSP.dll
29/10/2025 9:56:44  10/12/2025 21:57:14 wincredui.dll
29/10/2025 9:56:44  27/11/2025 12:54:52 windlp.dll
29/10/2025 9:56:44  29/10/2025 11:54:03 WinBioDataModel.dll
29/10/2025 9:56:44  10/12/2025 21:50:11 WindowsCodecs.dll
29/10/2025 9:56:44  10/12/2025 10:55:09 WindowsCodecsExt.dll
29/10/2025 9:56:44  04/12/2025 11:24:57 sti_ci.dll
29/10/2025 9:56:44  06/11/2025 13:11:22 EsclWiaDriver.dll
29/10/2025 9:56:44  10/12/2025 12:34:24 wiaservc.dll
29/10/2025 9:56:44  29/10/2025 11:54:05 Windows.Storage.OneCore.dll
29/10/2025 9:56:44  10/12/2025 13:41:18 WinSATAPI.dll
29/10/2025 9:56:44  10/12/2025 14:19:27 wuapi.dll
29/10/2025 9:56:44  10/12/2025 21:50:12 wusys.dll
29/10/2025 9:56:44  10/12/2025 21:51:04 wuaueng.dll
29/10/2025 9:56:44  06/11/2025 13:11:41 wini3c.dll
29/10/2025 9:56:44  10/12/2025 21:50:11 Windows.UI.dll
29/10/2025 9:56:44  10/12/2025 14:20:12 winlogonext.dll
29/10/2025 9:56:44  10/12/2025 0:29:05  wininitext.dll
29/10/2025 9:56:44  27/11/2025 12:53:51 winmde.dll
29/10/2025 9:56:44  10/12/2025 21:50:16 ReInfo.dll
29/10/2025 9:56:44  10/12/2025 0:29:06  ReAgent.dll
29/10/2025 9:56:44  18/11/2025 14:24:35 WinREAgent.dll
29/10/2025 9:56:44  10/12/2025 11:24:45 winrssrv.dll
29/10/2025 9:56:44  29/10/2025 11:54:05 winrsmgr.dll
29/10/2025 9:56:44  10/12/2025 21:50:58 rometadata.dll
29/10/2025 9:56:44  29/10/2025 11:54:02 winrscmd.dll
29/10/2025 9:56:44  10/12/2025 21:50:11 Windows.Graphics.dll
29/10/2025 9:56:44  10/12/2025 21:50:15 mswsock.dll
29/10/2025 9:56:44  10/12/2025 14:20:08 winsrv.dll
29/10/2025 9:56:44  10/12/2025 21:52:16 wintrust.dll
29/10/2025 9:56:44  10/12/2025 14:19:31 ws2_32.dll
29/10/2025 9:56:44  10/12/2025 21:50:58 Windows.UI.Input.Inking.dll
29/10/2025 9:56:45  29/10/2025 11:54:06 wlancfg.dll
29/10/2025 9:56:45  10/12/2025 0:29:06  wlgpclnt.dll
29/10/2025 9:56:45  29/10/2025 11:54:05 wlangpui.dll
29/10/2025 9:56:45  27/11/2025 12:54:43 wlanui.dll
29/10/2025 9:56:45  27/11/2025 12:54:05 WMADMOD.DLL
29/10/2025 9:56:45  10/12/2025 21:51:17 framedynos.dll
29/10/2025 9:56:45  06/11/2025 13:11:22 WMADMOE.DLL
29/10/2025 9:56:45  10/12/2025 12:51:28 ncobjapi.dll
29/10/2025 9:56:45  10/12/2025 11:26:17 framedyn.dll
29/10/2025 9:56:45  10/12/2025 21:50:15 wbemcomn.dll
29/10/2025 9:56:46  29/10/2025 11:54:01 WMSPDMOD.DLL
29/10/2025 9:56:46  29/10/2025 11:53:58 VIDRESZR.DLL
29/10/2025 9:56:46  29/10/2025 11:54:02 WMSPDMOE.DLL
29/10/2025 9:56:46  29/10/2025 13:05:56 WMVENCOD.DLL
29/10/2025 9:56:46  10/12/2025 13:41:18 COLORCNV.DLL
29/10/2025 9:56:46  27/11/2025 12:54:49 WMVDECOD.DLL
29/10/2025 9:56:46  29/10/2025 11:54:06 WMVSDECD.DLL
29/10/2025 9:56:46  29/10/2025 11:54:01 WMVSENCD.DLL
29/10/2025 9:56:46  27/11/2025 12:54:49 WMVXENCD.DLL
29/10/2025 9:56:46  10/12/2025 21:50:54 Windows.Management.Workplace.dll
29/10/2025 9:56:46  10/12/2025 0:29:06  MSWB7.dll
29/10/2025 9:56:46  10/12/2025 10:41:25 wkssvc.dll
29/10/2025 9:56:46  10/12/2025 21:50:11 wkscli.dll
29/10/2025 9:56:46  10/12/2025 10:41:26 wpdbusenum.dll
29/10/2025 9:56:46  10/12/2025 21:51:05 wpdshext.dll
29/10/2025 9:56:46  10/12/2025 11:24:40 wow64con.dll
29/10/2025 9:56:46  10/12/2025 11:54:13 WppRecorderUM.dll
29/10/2025 9:56:46  10/12/2025 0:29:06  wsdchngr.dll
29/10/2025 9:56:46  10/12/2025 11:02:46 wsp_fs.dll
29/10/2025 9:56:46  10/12/2025 10:41:25 smphost.dll
29/10/2025 9:56:46  10/12/2025 11:02:46 wsp_health.dll
29/10/2025 9:56:46  10/12/2025 21:51:03 mispace.dll
29/10/2025 9:56:46  10/12/2025 11:25:15 Windows.Networking.NetworkOperators.ESim.dll
29/10/2025 9:56:46  10/12/2025 21:56:23 luiapi.dll
29/10/2025 9:56:46  29/10/2025 11:54:00 wwancfg.dll
29/10/2025 9:56:46  10/12/2025 10:41:26 lpasvc.dll
29/10/2025 9:56:46  10/12/2025 21:56:23 eUICCsCSP.dll
29/10/2025 9:56:46  29/10/2025 11:54:04 WirelessNetworkPreferenceCSP.dll
29/10/2025 9:56:46  29/10/2025 11:54:03 CfgSPCellular.dll
29/10/2025 9:56:46  29/10/2025 11:53:57 EnterpriseAPNCsp.dll
29/10/2025 9:56:46  29/10/2025 11:54:05 csplte.dll
29/10/2025 9:56:46  10/12/2025 0:29:07  WWanAPI.dll
29/10/2025 9:56:46  10/12/2025 21:51:05 wwapi.dll
29/10/2025 9:56:46  29/10/2025 13:05:50 wwanprotdim.dll
29/10/2025 9:56:46  10/12/2025 10:41:26 wwansvc.dll
29/10/2025 9:56:46  10/12/2025 21:51:01 CertEnroll.dll
29/10/2025 9:56:46  29/10/2025 11:53:57 CertEnrollUI.dll
29/10/2025 9:56:46  10/12/2025 21:50:11 Windows.UI.XamlHost.dll
29/10/2025 9:56:46  10/12/2025 21:50:12 xmllite.dll
29/10/2025 9:56:46  10/12/2025 13:42:09 zipfldr.dll
29/10/2025 9:56:46  29/10/2025 11:53:58 ztdnsapi.dll
29/10/2025 9:56:46  10/12/2025 10:41:26 zthelper.dll
29/10/2025 9:56:47  22/11/2025 17:39:27 XblAuthTokenBrokerExt.dll
29/10/2025 9:56:47  10/12/2025 10:41:26 XblAuthManager.dll
29/10/2025 9:56:47  10/12/2025 21:50:54 gamemode.dll
29/10/2025 9:56:47  07/11/2025 7:50:53  XblAuthManagerProxy.dll
29/10/2025 9:56:47  29/10/2025 11:54:02 GameChatTranscription.dll
29/10/2025 9:56:47  29/10/2025 11:54:00 CertPKICmdlet.dll
29/10/2025 9:56:47  08/12/2025 18:19:26 wpd_ci.dll
29/10/2025 9:56:47  10/12/2025 0:29:07  GdiPlus.dll
29/10/2025 9:56:47  27/11/2025 12:54:38 winhttpcom.dll
29/10/2025 9:56:48  10/12/2025 21:50:10 winhttp.dll
29/10/2025 9:56:49  29/10/2025 11:54:03 authfwcfg.dll
29/10/2025 9:56:49  10/12/2025 21:50:55 fwbase.dll
29/10/2025 9:56:49  29/10/2025 11:54:03 nshwfp.dll
29/10/2025 9:56:49  10/12/2025 21:51:27 fwpolicyiomgr.dll
29/10/2025 9:56:49  10/12/2025 21:50:13 FirewallAPI.dll
29/10/2025 9:56:49  10/12/2025 14:20:10 MPSSVC.dll
29/10/2025 9:56:49  10/12/2025 0:29:08  wfapigp.dll
29/10/2025 9:56:49  03/11/2025 20:46:33 PNPXAssoc.dll
29/10/2025 9:56:49  27/11/2025 12:53:32 UvcModel.dll
29/10/2025 9:56:53  10/12/2025 10:41:26 whesvc.dll
29/10/2025 9:56:53  18/11/2025 18:54:17 whesvc_assets.dll
29/10/2025 9:56:53  18/11/2025 18:54:17 windiag.dll
29/10/2025 9:56:53  10/12/2025 21:50:55 AppExtension.dll
29/10/2025 9:56:53  10/12/2025 21:50:11 Windows.ApplicationModel.dll
29/10/2025 9:56:53  10/12/2025 21:50:54 AppContracts.dll
29/10/2025 9:56:53  10/12/2025 21:50:54 ClipboardServer.dll
29/10/2025 9:56:53  10/12/2025 11:24:14 dsclient.dll
29/10/2025 9:56:53  29/10/2025 11:54:01 Windows.ApplicationModel.Core.dll
29/10/2025 9:56:53  10/12/2025 10:41:25 dssvc.dll
29/10/2025 9:56:53  27/11/2025 12:53:50 XInputUap.dll
29/10/2025 9:56:54  10/12/2025 21:50:57 Windows.Gaming.Input.dll
29/10/2025 9:56:54  29/10/2025 11:54:02 Windows.Gaming.UI.GameBar.dll
29/10/2025 9:56:54  29/10/2025 11:53:57 Windows.Gaming.Preview.dll
29/10/2025 9:56:54  10/12/2025 10:41:26 XblGameSave.dll
29/10/2025 9:56:54  29/10/2025 11:54:03 windowslivelogin.dll
29/10/2025 9:56:54  29/10/2025 11:54:06 wlidcli.dll
29/10/2025 9:56:54  10/12/2025 21:51:03 MicrosoftAccountTokenProvider.dll
29/10/2025 9:56:54  10/12/2025 21:50:12 wlidcredprov.dll
29/10/2025 9:56:54  06/11/2025 13:11:30 wlidfdp.dll
29/10/2025 9:56:54  29/10/2025 11:53:58 wlidnsp.dll
29/10/2025 9:56:54  10/12/2025 21:50:57 wlidprov.dll
29/10/2025 9:56:54  14/11/2025 13:49:14 Windows.Internal.Devices.Lights.BacklightServer.dll
29/10/2025 9:56:54  10/12/2025 13:21:28 wlidsvc.dll
29/10/2025 9:56:54  27/11/2025 12:54:55 ffbroker.dll
29/10/2025 9:56:54  10/12/2025 13:16:00 Windows.Media.Speech.dll
29/10/2025 9:56:54  10/12/2025 21:51:13 SecurityHealthSsoUdk.dll
29/10/2025 9:56:54  27/11/2025 12:54:30 SenseSubAuth.dll
29/10/2025 9:56:54  29/10/2025 11:53:57 SubAuthLoader.dll
29/10/2025 9:56:54  10/12/2025 10:41:25 SecurityHealthAgent.dll
29/10/2025 9:56:54  29/10/2025 11:53:59 SecurityHealthCore.dll
29/10/2025 9:56:54  10/12/2025 22:00:13 SecurityHealthUdk.dll
29/10/2025 9:56:54  10/12/2025 21:50:55 StateRepository.Core.dll
29/10/2025 9:56:54  10/12/2025 21:50:54 Windows.StateRepositoryCore.dll
29/10/2025 9:56:54  10/12/2025 21:50:55 Windows.StateRepositoryClient.dll
29/10/2025 9:56:54  10/12/2025 21:50:54 Windows.StateRepositoryBroker.dll
29/10/2025 9:56:54  29/10/2025 11:53:59 Windows.StateRepositoryUpgrade.dll
29/10/2025 9:56:54  10/12/2025 21:50:29 Windows.StateRepositoryPS.dll
29/10/2025 9:56:54  10/12/2025 21:50:55 Windows.StateRepository.dll
29/10/2025 9:56:54  10/12/2025 21:50:58 Windows.Storage.ApplicationData.dll
29/10/2025 9:56:54  10/12/2025 21:50:11 Windows.System.Launcher.dll
29/10/2025 9:56:54  10/12/2025 0:29:13  cmintegrator.dll
29/10/2025 9:56:54  10/12/2025 21:51:29 Windows.System.UserProfile.DiagnosticsSettings.dll
29/10/2025 9:56:54  10/12/2025 21:52:17 Windows.Networking.Vpn.dll
29/10/2025 9:56:54  27/11/2025 12:53:35 3bc29097-7317-41d3-93b9-38a48f99d48a_mssrch.dll
29/10/2025 9:56:54  10/12/2025 21:50:59 mssitlb.dll
29/10/2025 9:56:54  18/11/2025 10:59:29 msscntrs.dll
29/10/2025 9:56:54  10/12/2025 21:52:20 mssph.dll
29/10/2025 9:56:54  10/12/2025 21:50:58 mssprxy.dll
29/10/2025 9:56:55  10/12/2025 21:52:22 mssvp.dll
29/10/2025 9:56:55  10/12/2025 21:50:55 mssrch.dll
29/10/2025 9:56:55  10/12/2025 0:29:13  Search.ProtocolHandler.MAPI2.dll
29/10/2025 9:56:55  10/12/2025 21:50:55 SearchIndexerCore.dll
29/10/2025 9:56:55  27/11/2025 12:54:28 SfSEnclave.dll
29/10/2025 9:56:55  10/12/2025 10:41:26 WSAIFabricHost.dll
29/10/2025 9:56:55  10/12/2025 21:50:55 tquery.dll
29/10/2025 9:56:55  10/12/2025 21:50:55 StructuredQuery.dll
29/10/2025 9:56:56  10/12/2025 11:25:07 WSDApi.dll
03/11/2025 21:11:03 08/12/2025 18:35:38 hppscancoins64.dll
03/11/2025 21:11:03 18/11/2025 18:51:59 hpptsplj177_x64.dll
03/11/2025 21:11:04 18/11/2025 18:51:59 hpwia2_lj177.dll
03/11/2025 21:11:04 10/12/2025 11:26:14 hpzjcd01scan.dll
18/11/2025 0:50:35  10/12/2025 13:43:19 vmchipset.dll
18/11/2025 0:50:35  10/12/2025 14:06:06 ClipSVC.dll
18/11/2025 0:50:35  18/11/2025 18:52:03 clipwinrt.dll
18/11/2025 0:50:35  18/11/2025 14:23:31 vmfirmwarehcl.dll
18/11/2025 0:50:38  10/12/2025 21:56:20 bcastdvruserservice.dll
18/11/2025 0:50:39  10/12/2025 21:51:00 CapabilityAccessManager.dll
18/11/2025 0:50:39  10/12/2025 21:50:28 CapabilityAccessManagerClient.dll
18/11/2025 0:50:39  10/12/2025 21:50:54 UserMgrProxy.dll
18/11/2025 0:50:39  18/11/2025 14:23:32 UpdateAgent.dll
18/11/2025 0:50:39  10/12/2025 10:41:25 usermgr.dll
18/11/2025 0:50:39  18/11/2025 14:23:31 TaskManagerDataLayer.dll
18/11/2025 0:50:39  18/11/2025 14:23:33 Windows.UI.AppDefaults.dll
18/11/2025 0:50:40  10/12/2025 21:50:56 AppXDeploymentServer.dll
18/11/2025 0:50:40  18/11/2025 14:23:33 tcbloader.dll
18/11/2025 0:50:40  10/12/2025 21:51:04 ci.dll
18/11/2025 0:50:40  10/12/2025 0:28:34  comdlg32.dll
18/11/2025 0:50:40  10/12/2025 21:50:55 ContentDeliveryManager.Utilities.dll
18/11/2025 0:50:40  10/12/2025 21:50:59 SettingsEnvironment.Desktop.dll
18/11/2025 0:50:40  10/12/2025 21:50:54 DesktopShellExt.dll
18/11/2025 0:50:40  10/12/2025 14:20:09 uDWM.dll
18/11/2025 0:50:40  10/12/2025 21:50:13 dhcpcore.dll
18/11/2025 0:50:40  10/12/2025 21:50:12 dhcpcsvc.dll
18/11/2025 0:50:40  10/12/2025 21:50:29 dhcpcore6.dll
18/11/2025 0:50:40  10/12/2025 21:50:12 dhcpcsvc6.dll
18/11/2025 0:50:40  18/11/2025 14:23:32 dhcpcmonitor.dll
18/11/2025 0:50:40  10/12/2025 21:53:00 D3DCompiler_47.dll
18/11/2025 0:50:41  10/12/2025 21:50:11 Windows.UI.Xaml.dll
18/11/2025 0:50:41  18/11/2025 14:23:34 dnscmmc.dll
18/11/2025 0:50:41  10/12/2025 0:28:38  DolbyDecMFT.dll
18/11/2025 0:50:41  10/12/2025 21:50:57 ExplorerFrame.dll
18/11/2025 0:50:42  10/12/2025 21:50:55 Windows.FileExplorer.Common.dll
18/11/2025 0:50:42  18/11/2025 14:23:33 fhuxgraphics.dll
18/11/2025 0:50:42  10/12/2025 21:50:10 fcon.dll
18/11/2025 0:50:42  10/12/2025 21:50:15 wosc.dll
18/11/2025 0:50:42  18/11/2025 14:23:33 HgsClientWmi.dll
18/11/2025 0:50:42  10/12/2025 22:00:23 HostNetSvc.dll
18/11/2025 0:50:42  10/12/2025 21:50:52 InputService.dll
18/11/2025 0:50:42  10/12/2025 14:19:26 microsoft-windows-kernel-power-events.dll
18/11/2025 0:50:42  10/12/2025 21:56:15 KernelBase.dll
18/11/2025 0:50:43  10/12/2025 0:28:45  cdd.dll
18/11/2025 0:50:43  10/12/2025 14:19:26 LogonController.dll
18/11/2025 0:50:43  10/12/2025 0:28:45  lsaadt.dll
18/11/2025 0:50:43  10/12/2025 21:51:03 lsasrv.dll
18/11/2025 0:50:43  18/11/2025 14:23:33 offlinelsa.dll
18/11/2025 0:50:43  10/12/2025 10:41:25 appinfo.dll
18/11/2025 0:50:43  10/12/2025 21:50:10 mf.dll
18/11/2025 0:50:43  18/11/2025 14:23:34 mfasfsrcsnk.dll
18/11/2025 0:50:43  10/12/2025 21:50:10 mfcore.dll
18/11/2025 0:50:43  18/11/2025 14:23:32 mfmpeg2srcsnk.dll
18/11/2025 0:50:43  10/12/2025 21:50:10 avrt.dll
18/11/2025 0:50:43  18/11/2025 14:23:32 mprapi.dll
18/11/2025 0:50:44  10/12/2025 13:43:25 msmpeg2vdec.dll
18/11/2025 0:50:44  24/11/2025 13:36:08 Windows.Networking.UX.EapRequestHandler.dll
18/11/2025 0:50:44  10/12/2025 21:50:12 RasMediaManager.dll
18/11/2025 0:50:44  10/12/2025 21:50:57 ntshrui.dll
18/11/2025 0:50:44  18/11/2025 14:23:31 CscMig.dll
18/11/2025 0:50:44  10/12/2025 0:28:51  prxyqry.dll
18/11/2025 0:50:44  10/12/2025 21:50:12 rasapi32.dll
18/11/2025 0:50:44  10/12/2025 21:50:10 windows.storage.dll
18/11/2025 0:50:45  10/12/2025 0:28:51  eapprovp.dll
18/11/2025 0:50:45  10/12/2025 14:20:15 raschap.dll
18/11/2025 0:50:45  10/12/2025 14:20:15 rastls.dll
18/11/2025 0:50:45  18/11/2025 14:23:31 WiFiConfigSP.dll
18/11/2025 0:50:45  18/11/2025 14:23:31 wfdprov.dll
18/11/2025 0:50:45  10/12/2025 21:50:12 wlanapi.dll
18/11/2025 0:50:45  10/12/2025 0:28:51  wlanhlp.dll
18/11/2025 0:50:45  10/12/2025 0:28:51  wlanmsm.dll
18/11/2025 0:50:45  10/12/2025 11:24:13 wlansec.dll
18/11/2025 0:50:45  10/12/2025 14:20:12 wlansvc.dll
18/11/2025 0:50:45  10/12/2025 0:28:51  wlansvcpal.dll
18/11/2025 0:50:46  10/12/2025 21:50:54 pnpui.dll
18/11/2025 0:50:46  18/11/2025 14:23:32 provcore.dll
18/11/2025 0:50:46  10/12/2025 21:50:15 rasadhlp.dll
18/11/2025 0:50:46  10/12/2025 10:41:25 rasauto.dll
18/11/2025 0:50:46  18/11/2025 19:04:53 vpnike.dll
18/11/2025 0:50:46  18/11/2025 19:04:53 rascustom.dll
18/11/2025 0:50:46  10/12/2025 10:41:25 sstpsvc.dll
18/11/2025 0:50:46  10/12/2025 0:28:54  raschapext.dll
18/11/2025 0:50:47  18/11/2025 14:23:33 rasdlg.dll
18/11/2025 0:50:47  18/11/2025 14:23:33 rasgcw.dll
18/11/2025 0:50:47  10/12/2025 21:50:12 rasman.dll
18/11/2025 0:50:47  10/12/2025 21:51:04 mprddm.dll
18/11/2025 0:50:47  10/12/2025 12:34:24 rasmans.dll
18/11/2025 0:50:47  10/12/2025 21:50:12 rasplap.dll
18/11/2025 0:50:47  10/12/2025 11:25:14 rasppp.dll
18/11/2025 0:50:47  18/11/2025 14:23:34 iprtprio.dll
18/11/2025 0:50:47  18/11/2025 14:23:32 iprtrmgr.dll
18/11/2025 0:50:47  10/12/2025 10:41:25 mprdim.dll
18/11/2025 0:50:47  18/11/2025 14:23:34 rtm.dll
18/11/2025 0:50:47  19/11/2025 8:46:43  rastlsext.dll
18/11/2025 0:50:47  10/12/2025 21:51:09 SearchFolder.dll
18/11/2025 0:50:47  10/12/2025 0:28:56  kerb3961.dll
18/11/2025 0:50:47  10/12/2025 0:28:56  kerberos.dll
18/11/2025 0:50:47  10/12/2025 10:41:25 localkdcsvc.dll
18/11/2025 0:50:47  10/12/2025 21:50:57 sppc.dll
18/11/2025 0:50:47  10/12/2025 21:56:15 sppobjs.dll
18/11/2025 0:50:47  10/12/2025 13:46:11 sendmail.dll
18/11/2025 0:50:48  10/12/2025 21:55:51 ServicingUAPI.dll
18/11/2025 0:50:48  10/12/2025 21:50:59 SHCore.dll
18/11/2025 0:50:48  10/12/2025 21:50:57 Windows.Shell.BlueLightReduction.dll
18/11/2025 0:50:48  10/12/2025 21:50:59 shell32.dll
18/11/2025 0:50:48  10/12/2025 14:20:15 SimAuth.dll
18/11/2025 0:50:48  18/11/2025 18:52:00 SCardBi.dll
18/11/2025 0:50:48  10/12/2025 10:41:25 SCardSvr.dll
18/11/2025 0:50:48  10/12/2025 21:50:56 sqmapi.dll
18/11/2025 0:50:48  10/12/2025 21:50:59 stobject.dll
18/11/2025 0:50:48  10/12/2025 21:55:55 InstallService.dll
18/11/2025 0:50:48  10/12/2025 10:41:21 InstallServiceTasks.dll
18/11/2025 0:50:48  10/12/2025 22:00:57 LicenseManager.dll
18/11/2025 0:50:49  10/12/2025 10:41:25 TabSvc.dll
18/11/2025 0:50:49  10/12/2025 21:50:10 TpmTasks.dll
18/11/2025 0:50:49  18/11/2025 14:23:32 tdhres.dll
18/11/2025 0:50:49  10/12/2025 21:50:55 twinui.pcshell.dll
18/11/2025 0:50:49  10/12/2025 21:50:57 Windows.UI.FileExplorer.dll
18/11/2025 0:50:49  10/12/2025 21:50:11 Windows.UI.Logon.dll
18/11/2025 0:50:49  10/12/2025 21:50:52 UIAutomationCore.dll
18/11/2025 0:50:49  10/12/2025 21:50:28 windowsudk.shellcommon.dll
18/11/2025 0:50:49  10/12/2025 21:50:58 windowsudkservices.shellcommon.dll
18/11/2025 0:50:50  10/12/2025 21:56:15 user32.dll
18/11/2025 0:50:50  10/12/2025 21:56:15 win32u.dll
18/11/2025 0:50:50  10/12/2025 21:50:11 Windows.UI.Immersive.dll
18/11/2025 0:50:50  10/12/2025 21:57:14 wmsgapi.dll
18/11/2025 0:50:50  10/12/2025 14:20:08 winsrvext.dll
18/11/2025 0:50:50  10/12/2025 21:51:25 coreglobconfig.dll
18/11/2025 0:50:50  10/12/2025 13:36:53 Windows.Media.Protection.PlayReady.dll
18/11/2025 0:50:50  18/11/2025 14:23:33 NAPCRYPT.DLL
18/11/2025 0:50:50  04/12/2025 11:25:35 AuthFWSnapin.dll
18/11/2025 0:50:51  18/11/2025 14:23:31 Windows.Devices.Perception.dll
```

---

7. Muestra el tamaño (`Length`) y nombre completo (`FullName`) de todos los ficheros del directorio ordenados por tamaño en sentido descendente.

---

Ejecutas:

```shell
Get-ChildItem C:\Windows\System32 | Sort-Object Length -Descending | Select-Object Length, FullName
```

Y veras algo asi:

```shell
PS C:\Users\HP> Get-ChildItem C:\Windows\System32 | Sort-Object Length -Descending | Select-Object Length, FullName

   Length FullName
   ------ --------
215625816 C:\Windows\System32\MRT.exe
 89771848 C:\Windows\System32\OneDriveSetup.exe
 36177352 C:\Windows\System32\vmfirmwarehcl.dll
 27958440 C:\Windows\System32\mfxplugin64_hw.dll
 26005504 C:\Windows\System32\edgehtml.dll
 24059904 C:\Windows\System32\mshtml.dll
 20211328 C:\Windows\System32\SynTPRes.dll
 18124800 C:\Windows\System32\DXCaptureReplay.dll
 17842176 C:\Windows\System32\Windows.UI.Xaml.dll
 13993416 C:\Windows\System32\vmms.exe
 12969376 C:\Windows\System32\ntoskrnl.exe
 11286096 C:\Windows\System32\mfc140ud.dll
 11216008 C:\Windows\System32\mfc140d.dll
 10779040 C:\Windows\System32\UdiApiClient.dll
 10616832 C:\Windows\System32\wmp.dll
 10572912 C:\Windows\System32\onnxruntime.dll
 10239544 C:\Windows\System32\directml.dll
  9904128 C:\Windows\System32\NlsLexicons000a.dll
  9691136 C:\Windows\System32\NlsData000a.dll
  9629696 C:\Windows\System32\twinui.pcshell.dll
  9269248 C:\Windows\System32\mstscax.dll
  8831584 C:\Windows\System32\windows.storage.dll
  8118272 C:\Windows\System32\BingMaps.dll
  8024064 C:\Windows\System32\Chakra.dll
  7928280 C:\Windows\System32\WinCsFlags.exe
  7711808 C:\Windows\System32\shell32.dll
  7471104 C:\Windows\System32\ieframe.dll
  7225344 C:\Windows\System32\dbgeng.dll
  7207696 C:\Windows\System32\Windows.Media.Protection.PlayReady.dll
  6889536 C:\Windows\System32\Windows.Media.dll
  6682936 C:\Windows\System32\OneCoreUAPCommonProxyStub.dll
  6600272 C:\Windows\System32\d2d1.dll
  6467584 C:\Windows\System32\Windows.Data.Pdf.dll
  6436280 C:\Windows\System32\vmfirmware.dll
  6377472 C:\Windows\System32\windowsudk.shellcommon.dll
  6176768 C:\Windows\System32\AppXDeploymentServer.dll
  6025120 C:\Windows\System32\smartscreen.dll
  5918488 C:\Windows\System32\d3d10warp.dll
  5890048 C:\Windows\System32\cdp.dll
  5881856 C:\Windows\System32\SRH.dll
  5656576 C:\Windows\System32\VsGraphicsDesktopEngine.exe
  5651048 C:\Windows\System32\mfc140u.dll
  5619712 C:\Windows\System32\Windows.UI.Cred.dll
  5616800 C:\Windows\System32\mfc140.dll
  5600368 C:\Windows\System32\StartTileData.dll
  5559008 C:\Windows\System32\Taskmgr.exe
  5550592 C:\Windows\System32\AuthFWSnapin.dll
  5315232 C:\Windows\System32\Windows.StateRepository.dll
  5218304 C:\Windows\System32\twinui.dll
  5058560 C:\Windows\System32\InputService.dll
  5005312 C:\Windows\System32\tellib.dll
  4964352 C:\Windows\System32\bootux.dll
  4849664 C:\Windows\System32\jscript9.dll
  4841472 C:\Windows\System32\diagtrack.dll
  4827648 C:\Windows\System32\sppsvc.exe
  4802824 C:\Windows\System32\setupapi.dll
  4800512 C:\Windows\System32\d3d12SDKLayers.dll
  4751360 C:\Windows\System32\VsGraphicsRemoteEngine.exe
  4669440 C:\Windows\System32\FrameServerCore.dll
  4669440 C:\Windows\System32\D3DCompiler_47.dll
  4652576 C:\Windows\System32\ThreatAssessment.dll
  4505600 C:\Windows\System32\HostNetSvc.dll
  4456576 C:\Windows\System32\SynTPEnh.exe
  4411392 C:\Windows\System32\dwmcore.dll
  4387840 C:\Windows\System32\Windows.UI.Input.Inking.Analysis.dll
  4362240 C:\Windows\System32\esent.dll
  4362240 C:\Windows\System32\MFMediaEngine.dll
  4351360 C:\Windows\System32\vmcompute.exe
  4337664 C:\Windows\System32\jscript9Legacy.dll
  4335920 C:\Windows\System32\mfcore.dll
  4272128 C:\Windows\System32\UIAutomationCore.dll
  4268032 C:\Windows\System32\win32kfull.sys
  4268032 C:\Windows\System32\UIRibbon.dll
  4227116 C:\Windows\System32\DefaultHrtfs.bin
  4202496 C:\Windows\System32\Windows.UI.Logon.dll
  4183552 C:\Windows\System32\SystemSettingsThresholdAdminFlowUI.dll
  4170664 C:\Windows\System32\KernelBase.dll
  4102016 C:\Windows\System32\rdpnanoTransport.dll
  4072872 C:\Windows\System32\UpdateAgent.dll
  3929088 C:\Windows\System32\ControlCenter.dll
  3829760 C:\Windows\System32\SettingsHandlers_nt.dll
  3784704 C:\Windows\System32\Microsoft.Bluetooth.Service.dll
  3740920 C:\Windows\System32\combase.dll
  3703728 C:\Windows\System32\vmwp.exe
  3690496 C:\Windows\System32\xpsrchvw.exe
  3661824 C:\Windows\System32\tquery.dll
  3604480 C:\Windows\System32\AppXDeploymentExtensions.onecore.dll
  3593120 C:\Windows\System32\mcupdate_GenuineIntel.dll
  3539928 C:\Windows\System32\DMRCDecoder.dll
  3522560 C:\Windows\System32\NetworkMobileSettings.dll
  3509528 C:\Windows\System32\D3D12Core.dll
  3491216 C:\Windows\System32\mispace.dll
  3437976 C:\Windows\System32\msi.dll
  3436544 C:\Windows\System32\FluencyDS.dll
  3403776 C:\Windows\System32\EdgeContent.dll
  3330048 C:\Windows\System32\win32kbase.sys
  3289088 C:\Windows\System32\msftedit.dll
  3285504 C:\Windows\System32\Windows.UI.Xaml.Controls.dll
  3268440 C:\Windows\System32\winload.efi
  3262808 C:\Windows\System32\aitstatic.exe
  3225584 C:\Windows\System32\Taskbar.dll
  3170304 C:\Windows\System32\boot.sdi
  3125248 C:\Windows\System32\wlansvc.dll
  3063808 C:\Windows\System32\mssrch.dll
  3031408 C:\Windows\System32\CoreUIComponents.dll
  3031040 C:\Windows\System32\InstallService.dll
  3006464 C:\Windows\System32\Microsoft.Bluetooth.Audio.dll
  2943896 C:\Windows\System32\CloudRecoveryDownloadTool.dll
  2922784 C:\Windows\System32\iertutil.dll
  2921896 C:\Windows\System32\ResetEngine.dll
  2887680 C:\Windows\System32\CertEnroll.dll
  2871296 C:\Windows\System32\MapRouter.dll
  2854912 C:\Windows\System32\ExplorerFrame.dll
  2834432 C:\Windows\System32\cdprt.dll
  2809856 C:\Windows\System32\Windows.CloudStore.dll
  2809856 C:\Windows\System32\AppXDeploymentExtensions.desktop.dll
  2781184 C:\Windows\System32\WsmSvc.dll
  2771056 C:\Windows\System32\winresume.efi
  2768896 C:\Windows\System32\WinSAT.exe
  2765768 C:\Windows\System32\icu.dll
  2764800 C:\Windows\System32\mshtml.tlb
  2753376 C:\Windows\System32\WMVDECOD.DLL
  2736128 C:\Windows\System32\Windows.Devices.Perception.dll
  2702336 C:\Windows\System32\athuwbx.sys
  2674840 C:\Windows\System32\wininet.dll
  2650112 C:\Windows\System32\MSVidCtl.dll
  2617976 C:\Windows\System32\Windows.ApplicationModel.Store.dll
  2606488 C:\Windows\System32\appraiser.dll
  2596864 C:\Windows\System32\MdmDiagnostics.dll
  2588672 C:\Windows\System32\ISM.dll
  2571136 C:\Windows\System32\SecConfig.efi
  2522016 C:\Windows\System32\ntdll.dll
  2521960 C:\Windows\System32\msmpeg2vdec.dll
  2519040 C:\Windows\System32\WindowManagement.dll
  2519040 C:\Windows\System32\DeviceFlows.DataModel.dll
  2517848 C:\Windows\System32\d3d11.dll
  2510848 C:\Windows\System32\WebRuntimeManager.dll
  2504080 C:\Windows\System32\AppxPackaging.dll
  2487704 C:\Windows\System32\ServicingUAPI.dll
  2486272 C:\Windows\System32\DWrite.dll
  2447616 C:\Windows\System32\mfmp4srcsnk.dll
  2400256 C:\Windows\System32\enterprisecsps.dll
  2393904 C:\Windows\System32\twinapi.appcore.dll
  2387968 C:\Windows\System32\xpsservices.dll
  2379776 C:\Windows\System32\storagewmi.dll
  2344320 C:\Windows\System32\msxml6.dll
  2332032 C:\Windows\System32\rdpserverbase.dll
  2319504 C:\Windows\System32\WindowsCodecs.dll
  2315688 C:\Windows\System32\CmService.dll
  2293760 C:\Windows\System32\MapGeocoder.dll
  2289664 C:\Windows\System32\certmgr.dll
  2262424 C:\Windows\System32\dbghelp.dll
  2249264 C:\Windows\System32\dcomp.dll
  2216208 C:\Windows\System32\cryptoss.dll
  2215936 C:\Windows\System32\winmsipc.dll
  2207944 C:\Windows\System32\mfplat.dll
  2206576 C:\Windows\System32\HrtfDspCpu.dll
  2199552 C:\Windows\System32\ReFsDedupSvc.exe
  2191360 C:\Windows\System32\LocationFramework.dll
  2174872 C:\Windows\System32\winmde.dll
  2158384 C:\Windows\System32\WMVCORE.DLL
  2120024 C:\Windows\System32\ucrtbased.dll
  2105344 C:\Windows\System32\netprofmsvc.dll
  2097712 C:\Windows\System32\VsGraphicsHelper.dll
  2082560 C:\Windows\System32\vulkaninfo-1-999-0-0-0.exe
  2082560 C:\Windows\System32\vulkaninfo.exe
  2064384 C:\Windows\System32\mmcndmgr.dll
  2064384 C:\Windows\System32\audiosrv.dll
  2053504 C:\Windows\System32\hvix64.exe
  2043904 C:\Windows\System32\wlidsvc.dll
  2023424 C:\Windows\System32\DXToolsOfflineAnalysis.dll
  2013744 C:\Windows\System32\AudioEng.dll
  2013320 C:\Windows\System32\ze_intel_gpu_raytracing.dll
  2009584 C:\Windows\System32\sppobjs.dll
  2007040 C:\Windows\System32\Windows.Devices.Bluetooth.dll
  2007040 C:\Windows\System32\CoreShell.dll
  2005496 C:\Windows\System32\WMVENCOD.DLL
  1988928 C:\Windows\System32\InputHost.dll
  1971584 C:\Windows\System32\hvax64.exe
  1966080 C:\Windows\System32\OpcServices.dll
  1945600 C:\Windows\System32\refsutil.exe
  1937408 C:\Windows\System32\WpcDesktopMonSvc.dll
  1933312 C:\Windows\System32\webauthn.dll
  1933312 C:\Windows\System32\GdiPlus.dll
  1921024 C:\Windows\System32\dwmscene.dll
  1918464 C:\Windows\System32\libcrypto.dll
  1914240 C:\Windows\System32\workfolderssvc.dll
  1912832 C:\Windows\System32\urlmon.dll
  1906304 C:\Windows\System32\mfsrcsnk.dll
  1888256 C:\Windows\System32\PeerDistSvc.dll
  1881512 C:\Windows\System32\user32.dll
  1881472 C:\Windows\System32\Microsoft.Uev.AppAgent.dll
  1877392 C:\Windows\System32\DisplaySwitch.exe
  1866208 C:\Windows\System32\winload.exe
  1865008 C:\Windows\System32\WMALFXGFXDSP.dll
  1859584 C:\Windows\System32\mmc.exe
  1847296 C:\Windows\System32\quartz.dll
  1844608 C:\Windows\System32\rdpbase.dll
  1835008 C:\Windows\System32\edgeangle.dll
  1822720 C:\Windows\System32\rdpcorets.dll
  1819520 C:\Windows\System32\WindowManagementAPI.dll
  1810432 C:\Windows\System32\ActiveSyncProvider.dll
  1807144 C:\Windows\System32\AudioSes.dll
  1798144 C:\Windows\System32\uReFS.dll
  1778224 C:\Windows\System32\mfsvr.dll
  1773568 C:\Windows\System32\Windows.UI.BioFeedback.dll
  1769936 C:\Windows\System32\d3d9.dll
  1757184 C:\Windows\System32\lsasrv.dll
  1742240 C:\Windows\System32\wsp_fs.dll
  1740800 C:\Windows\System32\dui70.dll
  1728656 C:\Windows\System32\ShellAppRuntime.exe
  1728512 C:\Windows\System32\comsvcs.dll
  1724288 C:\Windows\System32\doclient.dll
  1714238 C:\Windows\System32\PerfStringBackup.INI
  1713552 C:\Windows\System32\SettingsHandlers_StorageSense.dll
  1705344 C:\Windows\System32\AppVEntSubsystems64.dll
  1703936 C:\Windows\System32\Microsoft.Uev.ModernAppAgent.dll
  1689000 C:\Windows\System32\ContentDeliveryManager.Utilities.dll
  1683456 C:\Windows\System32\CustomShellHost.exe
  1683456 C:\Windows\System32\TokenBroker.dll
  1683200 C:\Windows\System32\ole32.dll
  1671168 C:\Windows\System32\mmgaclient.dll
  1667072 C:\Windows\System32\TpmCoreProvisioning.dll
  1646592 C:\Windows\System32\APMon.dll
  1641872 C:\Windows\System32\mfAACEnc.dll
  1638400 C:\Windows\System32\SettingsHandlers_Storage.dll
  1638400 C:\Windows\System32\pla.dll
  1635744 C:\Windows\System32\AppVEntVirtualization.dll
  1630208 C:\Windows\System32\Windows.Globalization.dll
  1622016 C:\Windows\System32\wpncore.dll
  1617920 C:\Windows\System32\CloudRestoreLauncher.dll
  1617920 C:\Windows\System32\msdtctm.dll
  1613824 C:\Windows\System32\dfshim.dll
  1612928 C:\Windows\System32\mfasfsrcsnk.dll
  1609728 C:\Windows\System32\IKEEXT.DLL
  1609728 C:\Windows\System32\Windows.UI.Input.Inking.dll
  1607040 C:\Windows\System32\VmComputeAgent.exe
  1605632 C:\Windows\System32\NlsData0000.dll
  1598338 C:\Windows\System32\WindowsVirtualization.V2.mof
  1594416 C:\Windows\System32\libomp140d.x86_64.dll
  1593344 C:\Windows\System32\certutil.exe
  1593344 C:\Windows\System32\vssapi.dll
  1588120 C:\Windows\System32\Windows.Media.Speech.dll
  1586624 C:\Windows\System32\vulkan-1.dll
  1586624 C:\Windows\System32\vulkan-1-999-0-0-0.dll
  1585152 C:\Windows\System32\msxml3.dll
  1581568 C:\Windows\System32\Windows.UI.FileExplorer.dll
  1571640 C:\Windows\System32\Windows.System.Launcher.dll
  1568768 C:\Windows\System32\UserDataService.dll
  1567480 C:\Windows\System32\drvstore.dll
  1564672 C:\Windows\System32\MusUpdateHandlers1.dll
  1560576 C:\Windows\System32\CapabilityAccessManager.dll
  1560576 C:\Windows\System32\lpasvc.dll
  1549312 C:\Windows\System32\aadtb.dll
  1544192 C:\Windows\System32\Windows.Graphics.Printing.Workflow.dll
  1540096 C:\Windows\System32\wbengine.exe
  1540096 C:\Windows\System32\MSPhotography.dll
  1540096 C:\Windows\System32\rdpsharercom.dll
  1540096 C:\Windows\System32\localspl.dll
  1536000 C:\Windows\System32\wwansvc.dll
  1534448 C:\Windows\System32\crypt32.dll
  1534424 C:\Windows\System32\mfnetsrc.dll
  1519616 C:\Windows\System32\Windows.Devices.PointOfService.dll
  1519616 C:\Windows\System32\WMPDMC.exe
  1517904 C:\Windows\System32\Windows.Devices.Sensors.dll
  1516960 C:\Windows\System32\wsp_health.dll
  1513752 C:\Windows\System32\AppXDeploymentClient.dll
  1511424 C:\Windows\System32\rpcss.dll
  1505480 C:\Windows\System32\WinTypes.dll
  1503856 C:\Windows\System32\vccorlib140d.dll
  1499136 C:\Windows\System32\Windows.Graphics.Printing.3D.dll
  1486848 C:\Windows\System32\Windows.UI.Core.TextInput.dll
  1476584 C:\Windows\System32\dsreg.dll
  1474560 C:\Windows\System32\VSSVC.exe
  1474560 C:\Windows\System32\qmgr.dll
  1474560 C:\Windows\System32\Wpc.dll
  1472456 C:\Windows\System32\webservices.dll
  1462272 C:\Windows\System32\archiveint.dll
  1461200 C:\Windows\System32\winresume.exe
  1454080 C:\Windows\System32\usermgr.dll
  1447664 C:\Windows\System32\msctf.dll
  1445888 C:\Windows\System32\tsf3gip.dll
  1435040 C:\Windows\System32\AppVIntegration.dll
  1431072 C:\Windows\System32\dxilconv.dll
  1429504 C:\Windows\System32\bcastdvruserservice.dll
  1426976 C:\Windows\System32\msvproc.dll
  1425408 C:\Windows\System32\mfc42u.dll
  1425408 C:\Windows\System32\Windows.Management.Service.dll
  1422736 C:\Windows\System32\wpx.dll
  1421312 C:\Windows\System32\wpnapps.dll
  1418640 C:\Windows\System32\SecurityHealthAgent.dll
  1417216 C:\Windows\System32\MPSSVC.dll
  1417216 C:\Windows\System32\mfc42.dll
  1417216 C:\Windows\System32\FntCache.dll
  1413120 C:\Windows\System32\win32spl.dll
  1413120 C:\Windows\System32\wcmsvc.dll
  1404928 C:\Windows\System32\kerberos.dll
  1404928 C:\Windows\System32\SettingsEnvironment.Desktop.dll
  1393920 C:\Windows\System32\Windows.UI.dll
  1388544 C:\Windows\System32\Windows.Web.Http.dll
  1384448 C:\Windows\System32\mstsc.exe
  1379840 C:\Windows\System32\ConstraintIndex.Search.dll
  1377664 C:\Windows\System32\CloudExperienceHostCommon.dll
  1373600 C:\Windows\System32\vmemulateddevices.dll
  1373328 C:\Windows\System32\ucrtbase.dll
  1373296 C:\Windows\System32\ttdrecordcpu.dll
  1368064 C:\Windows\System32\Windows.UI.Immersive.dll
  1360912 C:\Windows\System32\ApplyTrustOffline.exe
  1359872 C:\Windows\System32\CapabilityAccessManager.Desktop.Storage.dll
  1356728 C:\Windows\System32\TextInputFramework.dll
  1347584 C:\Windows\System32\NotificationController.dll
  1343488 C:\Windows\System32\MsSpellCheckingFacility.dll
  1343488 C:\Windows\System32\gpsvc.dll
  1340800 C:\Windows\System32\SecurityHealthCore.dll
  1335296 C:\Windows\System32\GamePanel.exe
  1331200 C:\Windows\System32\Windows.UI.Shell.Internal.AdaptiveCards.dll
  1327848 C:\Windows\System32\DolbyDecMFT.dll
  1327104 C:\Windows\System32\mmgaserver.exe
  1323704 C:\Windows\System32\mfmpeg2srcsnk.dll
  1323008 C:\Windows\System32\fveapi.dll
  1323008 C:\Windows\System32\SEMgrSvc.dll
  1320336 C:\Windows\System32\securekernel.exe
  1318912 C:\Windows\System32\ShellCommonCommonProxyStub.dll
  1310720 C:\Windows\System32\usbmon.dll
  1307552 C:\Windows\System32\hpbuio64.dll
  1302528 C:\Windows\System32\Windows.ApplicationModel.ConversationalAgent.dll
  1302528 C:\Windows\System32\Windows.UI.Xaml.Maps.dll
  1302528 C:\Windows\System32\Windows.Media.FaceAnalysis.dll
  1302528 C:\Windows\System32\windowsperformancerecordercontrol.dll
  1294336 C:\Windows\System32\XpsRasterService.dll
  1290240 C:\Windows\System32\Windows.Media.Editing.dll
  1286488 C:\Windows\System32\dxgi.dll
  1286144 C:\Windows\System32\Microsoft.Graphics.Display.DisplayEnhancementService.dll
  1282048 C:\Windows\System32\WMNetMgr.dll
  1277952 C:\Windows\System32\Windows.Security.Authentication.Web.Core.dll
  1277952 C:\Windows\System32\clusapi.dll
  1275296 C:\Windows\System32\AppVEntSubsystemController.dll
  1269760 C:\Windows\System32\Windows.UI.Xaml.Phone.dll
  1265856 C:\Windows\System32\mfperfhelper.dll
  1261568 C:\Windows\System32\termsrv.dll
  1257472 C:\Windows\System32\Windows.Storage.Search.dll
  1257472 C:\Windows\System32\uDWM.dll
  1257472 C:\Windows\System32\DmOsConfig.dll
  1254816 C:\Windows\System32\efscore.dll
  1253480 C:\Windows\System32\WpcMon.exe
  1253376 C:\Windows\System32\d3d10.dll
  1250720 C:\Windows\System32\DismApi.dll
  1249280 C:\Windows\System32\ngcsvc.dll
  1249280 C:\Windows\System32\SettingsHandlers_IME.dll
  1241040 C:\Windows\System32\dnsapi.dll
  1238400 C:\Windows\System32\clipwinrt.dll
  1236992 C:\Windows\System32\taskbarcpl.dll
  1236992 C:\Windows\System32\XboxNetApiSvc.dll
  1234432 C:\Windows\System32\vmconnect.exe
  1232768 C:\Windows\System32\gdi32full.dll
  1224704 C:\Windows\System32\wevtsvc.dll
  1224552 C:\Windows\System32\CoreMessaging.dll
  1224512 C:\Windows\System32\winhttp.dll
  1220608 C:\Windows\System32\sdengin2.dll
  1212416 C:\Windows\System32\webplatstorageserver.dll
  1212416 C:\Windows\System32\diagperf.dll
  1212416 C:\Windows\System32\FrameServer.dll
  1205632 C:\Windows\System32\rdpshell.exe
  1197056 C:\Windows\System32\Windows.AI.MachineLearning.dll
  1196032 C:\Windows\System32\d3d11_3SDKLayers.dll
  1193344 C:\Windows\System32\pcasvc.dll
  1191936 C:\Windows\System32\SensorDataService.exe
  1191936 C:\Windows\System32\DXCap.exe
  1191936 C:\Windows\System32\Unistore.dll
  1191936 C:\Windows\System32\WMSPDMOD.DLL
  1183744 C:\Windows\System32\adpsvc.dll
  1179648 C:\Windows\System32\srmclient.dll
  1175552 C:\Windows\System32\XpsPrint.dll
  1175552 C:\Windows\System32\agentactivationruntimewindows.dll
  1174960 C:\Windows\System32\dmcmnutils.dll
  1171456 C:\Windows\System32\Windows.Networking.BackgroundTransfer.dll
  1167360 C:\Windows\System32\MbaeApiPublic.dll
  1163264 C:\Windows\System32\TSWorkspace.dll
  1162568 C:\Windows\System32\rpcrt4.dll
  1162552 C:\Windows\System32\FlightSettings.dll
  1158440 C:\Windows\System32\PCPKsp.dll
  1158416 C:\Windows\System32\MrmCoreR.dll
  1158392 C:\Windows\System32\msmpeg2ac3dec.dll
  1157484 C:\Windows\System32\WindowsHyperVCluster.V2.mof
  1155072 C:\Windows\System32\NaturalLanguage6.dll
  1155072 C:\Windows\System32\Windows.Media.Streaming.dll
  1150976 C:\Windows\System32\daxexec.dll
  1150976 C:\Windows\System32\Windows.Internal.Shell.XamlInputViewHost.dll
  1150976 C:\Windows\System32\rasmans.dll
  1148328 C:\Windows\System32\vmchipset.dll
  1148288 C:\Windows\System32\dcntel.dll
  1146048 C:\Windows\System32\ClipUp.exe
  1142784 C:\Windows\System32\DbgModel.dll
  1142784 C:\Windows\System32\TaskFlowDataEngine.dll
  1138688 C:\Windows\System32\dcsvc.dll
  1134608 C:\Windows\System32\vfprintpthelper.dll
  1134592 C:\Windows\System32\SettingsHandlers_Language.dll
  1133624 C:\Windows\System32\mfaudiocnv.dll
  1131920 C:\Windows\System32\pidgenx.dll
  1130496 C:\Windows\System32\BTAGService.dll
  1126400 C:\Windows\System32\MiracastReceiver.dll
  1126400 C:\Windows\System32\Windows.Internal.Management.dll
  1123736 C:\Windows\System32\Facilitator.dll
  1122304 C:\Windows\System32\rasapi32.dll
  1119656 C:\Windows\System32\RdpShellExt.dll
  1116800 C:\Windows\System32\SynCOM.dll
  1111424 C:\Windows\System32\SystemSettings.DataModel.dll
  1110016 C:\Windows\System32\inetcomm.dll
  1110016 C:\Windows\System32\EmailApis.dll
  1108840 C:\Windows\System32\ci.dll
  1105408 C:\Windows\System32\TaskManagerDataLayer.dll
  1103232 C:\Windows\System32\dpx.dll
  1101824 C:\Windows\System32\Windows.Networking.Vpn.dll
  1097728 C:\Windows\System32\DiagCpl.dll
  1097728 C:\Windows\System32\sdclt.exe
  1095064 C:\Windows\System32\LicenseManager.dll
  1093632 C:\Windows\System32\WMSPDMOE.DLL
  1085440 C:\Windows\System32\WpcRefreshTask.dll
  1075792 C:\Windows\System32\propsys.dll
  1075776 C:\Windows\System32\pkeyhelper.dll
  1074576 C:\Windows\System32\WindowsSandbox.exe
  1071640 C:\Windows\System32\mfnetcore.dll
  1070864 C:\Windows\System32\winsqlite3.dll
  1069056 C:\Windows\System32\BFE.DLL
  1069056 C:\Windows\System32\Pimstore.dll
  1064960 C:\Windows\System32\MessagingDataModel2.dll
  1060864 C:\Windows\System32\MapsStore.dll
  1056768 C:\Windows\System32\ContactApis.dll
  1044480 C:\Windows\System32\netlogon.dll
  1044480 C:\Windows\System32\autochk.exe
  1044480 C:\Windows\System32\XblAuthManager.dll
  1043104 C:\Windows\System32\ze_validation_layer.dll
  1042736 C:\Windows\System32\mfds.dll
  1040384 C:\Windows\System32\MCRecvSrc.dll
  1032192 C:\Windows\System32\cdosys.dll
  1024000 C:\Windows\System32\Narrator.exe
  1024000 C:\Windows\System32\Windows.Media.Audio.dll
  1022984 C:\Windows\System32\hpptsplj177_x64.dll
  1015808 C:\Windows\System32\wbiosrvc.dll
  1015808 C:\Windows\System32\conhost.exe
  1011712 C:\Windows\System32\dmenrollengine.dll
  1011712 C:\Windows\System32\SearchIndexer.exe
  1011712 C:\Windows\System32\agentactivationruntime.dll
  1011712 C:\Windows\System32\aadcloudap.dll
  1009648 C:\Windows\System32\MSAudDecMFT.dll
  1007616 C:\Windows\System32\WebcamUi.dll
  1007616 C:\Windows\System32\sysmain.dll
  1005512 C:\Windows\System32\Windows.Media.Devices.dll
  1003520 C:\Windows\System32\tapi3.dll
  1003520 C:\Windows\System32\PayloadRestrictions.dll
   995328 C:\Windows\System32\samsrv.dll
   995328 C:\Windows\System32\PsmServiceExtHost.dll
   995328 C:\Windows\System32\fontext.dll
   993632 C:\Windows\System32\msvcr120_clr0400.dll
   992656 C:\Windows\System32\computecore.dll
   991232 C:\Windows\System32\fcon.dll
   991232 C:\Windows\System32\spoolsv.exe
   989000 C:\Windows\System32\wer.dll
   988984 C:\Windows\System32\SHCore.dll
   988984 C:\Windows\System32\WMADMOD.DLL
   988480 C:\Windows\System32\AppVPolicy.dll
   987136 C:\Windows\System32\bisrv.dll
   987136 C:\Windows\System32\DispBroker.Desktop.dll
   983040 C:\Windows\System32\opengl32.dll
   983040 C:\Windows\System32\sbe.dll
   975696 C:\Windows\System32\tcblaunch.exe
   974848 C:\Windows\System32\appfootprint.dll
   970752 C:\Windows\System32\comdlg32.dll
   966656 C:\Windows\System32\Windows.CloudStore.EarlyDownloader.dll
   966656 C:\Windows\System32\spoolsvworker.exe
   964000 C:\Windows\System32\Windows.Services.TargetedContent.dll
   963968 C:\Windows\System32\aeinv.dll
   958464 C:\Windows\System32\winlogon.exe
   955968 C:\Windows\System32\ServicingCommon.dll
   955776 C:\Windows\System32\NetSetupEngine.dll
   955224 C:\Windows\System32\libmfxhw64.dll
   954368 C:\Windows\System32\SecurityHealthSSO.dll
   954368 C:\Windows\System32\Windows.Media.Playback.MediaPlayer.dll
   950272 C:\Windows\System32\adtschema.dll
   949248 C:\Windows\System32\SystemSettings.Handlers.dll
   947688 C:\Windows\System32\D3DSCache.dll
   947664 C:\Windows\System32\ClipSVC.dll
   946176 C:\Windows\System32\mfmkvsrcsnk.dll
   946176 C:\Windows\System32\schedsvc.dll
   946176 C:\Windows\System32\SettingsHandlers_Devices.dll
   946176 C:\Windows\System32\windows.immersiveshell.serviceprovider.dll
   942080 C:\Windows\System32\ActivationManager.dll
   942080 C:\Windows\System32\SensorService.dll
   936368 C:\Windows\System32\sudo.exe
   933888 C:\Windows\System32\msdtcprx.dll
   931160 C:\Windows\System32\AppContracts.dll
   929792 C:\Windows\System32\Windows.Security.Authentication.OnlineId.dll
   929792 C:\Windows\System32\MSMPEG2ENC.DLL
   929792 C:\Windows\System32\hgattest.dll
   927136 C:\Windows\System32\SmiEngine.dll
   925696 C:\Windows\System32\InkObjCore.dll
   925696 C:\Windows\System32\lsm.dll
   925312 C:\Windows\System32\msvcp140d.dll
   923024 C:\Windows\System32\WWAHost.exe
   922736 C:\Windows\System32\vcamp140d.dll
   921600 C:\Windows\System32\winipcsecproc.dll
   921600 C:\Windows\System32\StorSvc.dll
   918944 C:\Windows\System32\MpSigStub.exe
   918912 C:\Windows\System32\AboutSettingsHandlers.dll
   914608 C:\Windows\System32\Windows.Internal.Shell.Broker.dll
   913408 C:\Windows\System32\assignedaccessmanagersvc.dll
   913408 C:\Windows\System32\ieapfltr.dll
   906648 C:\Windows\System32\upshared.dll
   906376 C:\Windows\System32\services.exe
   905216 C:\Windows\System32\LogonController.dll
   905216 C:\Windows\System32\SearchIndexerCore.dll
   902656 C:\Windows\System32\fhuxpresentation.dll
   902584 C:\Windows\System32\AppVManifest.dll
   902576 C:\Windows\System32\wsp_sr.dll
   902560 C:\Windows\System32\wimgapi.dll
   901120 C:\Windows\System32\fvewiz.dll
   897024 C:\Windows\System32\Windows.Networking.dll
   897024 C:\Windows\System32\devmgr.dll
   893944 C:\Windows\System32\ttdrecord.dll
   892928 C:\Windows\System32\UiaManager.dll
   890272 C:\Windows\System32\NgcIsoCtnr.dll
   889832 C:\Windows\System32\Windows.ApplicationModel.dll
   889816 C:\Windows\System32\oleaut32.dll
   888832 C:\Windows\System32\CBDHSvc.dll
   888832 C:\Windows\System32\AgentService.exe
   888832 C:\Windows\System32\iphlpsvc.dll
   888832 C:\Windows\System32\Windows.Media.BackgroundMediaPlayback.dll
   885712 C:\Windows\System32\mfreadwrite.dll
   884736 C:\Windows\System32\Windows.Media.Playback.BackgroundMediaPlayer.dll
   884736 C:\Windows\System32\localkdcsvc.dll
   881592 C:\Windows\System32\audiodg.exe
   880640 C:\Windows\System32\Windows.Graphics.Printing.dll
   876544 C:\Windows\System32\SettingsHandlers_PCDisplay.dll
   876544 C:\Windows\System32\certca.dll
   876544 C:\Windows\System32\mprddm.dll
   876544 C:\Windows\System32\cdpsvc.dll
   876544 C:\Windows\System32\Windows.Media.Ocr.dll
   872448 C:\Windows\System32\InputSwitch.dll
   868352 C:\Windows\System32\Windows.Gaming.Input.dll
   868352 C:\Windows\System32\XblGameSave.dll
   868352 C:\Windows\System32\energy.dll
   868352 C:\Windows\System32\nshwfp.dll
   864256 C:\Windows\System32\twinapi.dll
   862800 C:\Windows\System32\locale.nls
   860160 C:\Windows\System32\Bubbles.scr
   853376 C:\Windows\System32\NgcCtnrSvc.dll
   852672 C:\Windows\System32\WUDFx02000.dll
   852656 C:\Windows\System32\Windows.Perception.Stub.dll
   851968 C:\Windows\System32\Microsoft.Uev.CommonBridge.dll
   851968 C:\Windows\System32\cscsvc.dll
   847872 C:\Windows\System32\msfeeds.dll
   847872 C:\Windows\System32\WorkfoldersControl.dll
   847872 C:\Windows\System32\esentutl.exe
   843776 C:\Windows\System32\WpcWebFilter.dll
   843776 C:\Windows\System32\UIRibbonRes.dll
   843776 C:\Windows\System32\mblctr.exe
   841128 C:\Windows\System32\vmcompute.dll
   840232 C:\Windows\System32\OneCoreCommonProxyStub.dll
   839680 C:\Windows\System32\imapi2fs.dll
   839680 C:\Windows\System32\EdgeManager.dll
   839680 C:\Windows\System32\windiag.dll
   836128 C:\Windows\System32\kernel32.dll
   835584 C:\Windows\System32\Windows.UI.Xaml.InkControls.dll
   834048 C:\Windows\System32\DirectML.Debug.dll
   832008 C:\Windows\System32\fontdrvhost.exe
   831984 C:\Windows\System32\webio.dll
   831488 C:\Windows\System32\cscui.dll
   831488 C:\Windows\System32\Magnify.exe
   831488 C:\Windows\System32\WlanMediaManager.dll
   831488 C:\Windows\System32\jscript.dll
   829976 C:\Windows\System32\ucrtbase_clr0400.dll
   829264 C:\Windows\System32\msvcr100.dll
   828800 C:\Windows\System32\LicensingWinRT.dll
   827880 C:\Windows\System32\StateRepository.Core.dll
   824704 C:\Windows\System32\WinREAgent.dll
   823464 C:\Windows\System32\ze_loader.dll
   823296 C:\Windows\System32\wiaaut.dll
   822272 C:\Windows\System32\WindowsInternal.ComposableShell.Display.dll
   819592 C:\Windows\System32\Windows.StateRepositoryPS.dll
   819200 C:\Windows\System32\ApplySettingsTemplateCatalog.exe
   815104 C:\Windows\System32\SpaceControl.dll
   811008 C:\Windows\System32\windlp.dll
   808336 C:\Windows\System32\win32k.sys
   807200 C:\Windows\System32\evr.dll
   806912 C:\Windows\System32\WSDApi.dll
   806912 C:\Windows\System32\msctfuimanager.dll
   806912 C:\Windows\System32\AppointmentApis.dll
   803072 C:\Windows\System32\mscms.dll
   802816 C:\Windows\System32\werconcpl.dll
   802816 C:\Windows\System32\wdc.dll
   802816 C:\Windows\System32\comuid.dll
   802816 C:\Windows\System32\Windows.CloudStore.Schema.Shell.dll
   802816 C:\Windows\System32\twinui.appcore.dll
   802816 C:\Windows\System32\ngccredprov.dll
   801664 C:\Windows\System32\plutonfw_AuthenticAMD.dll
   798976 C:\Windows\System32\SystemSettingsAdminFlows.exe
   798912 C:\Windows\System32\WMADMOE.DLL
   794624 C:\Windows\System32\PerceptionSimulationManager.dll
   794624 C:\Windows\System32\wiaservc.dll
   794624 C:\Windows\System32\odbc32.dll
   794624 C:\Windows\System32\internetmail.dll
   794624 C:\Windows\System32\sqlsrv32.dll
   794624 C:\Windows\System32\schannel.dll
   792000 C:\Windows\System32\AppVClient.exe
   790680 C:\Windows\System32\wininit.exe
   790672 C:\Windows\System32\StructuredQuery.dll
   790528 C:\Windows\System32\ieproxy.dll
   790528 C:\Windows\System32\sdcpl.dll
   790528 C:\Windows\System32\RDXService.dll
   786432 C:\Windows\System32\Windows.Globalization.PhoneNumberFormatting.dll
   786432 C:\Windows\System32\SmartcardCredentialProvider.dll
   782336 C:\Windows\System32\wpnprv.dll
   782336 C:\Windows\System32\efswrt.dll
   778256 C:\Windows\System32\Windows.Devices.Enumeration.dll
   778256 C:\Windows\System32\ipnathlp.dll
   778240 C:\Windows\System32\Windows.AccountsControl.dll
   778240 C:\Windows\System32\wlanpref.dll
   775584 C:\Windows\System32\devinv.dll
   774144 C:\Windows\System32\msmpeg2adec.dll
   774144 C:\Windows\System32\d3d9on12.dll
   774144 C:\Windows\System32\AppReadiness.dll
   774144 C:\Windows\System32\Windows.UI.Search.dll
   770048 C:\Windows\System32\gns.dll
   770048 C:\Windows\System32\AudioHandlers.dll
   770008 C:\Windows\System32\windows.applicationmodel.datatransfer.dll
   766176 C:\Windows\System32\libvpl.dll
   765952 C:\Windows\System32\MrmIndexer.dll
   765952 C:\Windows\System32\printui.dll
   765952 C:\Windows\System32\TabletPC.cpl
   761856 C:\Windows\System32\w32time.dll
   761856 C:\Windows\System32\Windows.Networking.Connectivity.dll
   761856 C:\Windows\System32\FsNVSDeviceSource.dll
   761760 C:\Windows\System32\sppwinob.dll
   757760 C:\Windows\System32\PhoneService.dll
   757760 C:\Windows\System32\wlansec.dll
   757760 C:\Windows\System32\ntfsres.dll
   757760 C:\Windows\System32\wsecedit.dll
   757760 C:\Windows\System32\Windows.FileExplorer.Common.dll
   757592 C:\Windows\System32\MFCaptureEngine.dll
   756442 C:\Windows\System32\perfh00A.dat
   755128 C:\Windows\System32\AppVEntStreamingManager.dll
   753664 C:\Windows\System32\WinSync.dll
   753464 C:\Windows\System32\policymanager.dll
   749568 C:\Windows\System32\rastls.dll
   749568 C:\Windows\System32\fveapibase.dll
   749568 C:\Windows\System32\hhctrl.ocx
   749352 C:\Windows\System32\TextShaping.dll
   745552 C:\Windows\System32\DynamicLong.bin
   745472 C:\Windows\System32\ApplicationFrame.dll
   745472 C:\Windows\System32\SettingsHandlers_Camera.dll
   745472 C:\Windows\System32\das.dll
   745200 C:\Windows\System32\advapi32.dll
   743936 C:\Windows\System32\MicrosoftAccount.TokenProvider.Core.dll
   742960 C:\Windows\System32\curl.exe
   742824 C:\Windows\System32\ReAgent.dll
   741376 C:\Windows\System32\vds.exe
   741376 C:\Windows\System32\DevicesFlowBroker.dll
   741376 C:\Windows\System32\vpnike.dll
   741376 C:\Windows\System32\lpksetup.exe
   738736 C:\Windows\System32\AppVOrchestration.dll
   738688 C:\Windows\System32\comctl32.dll
   737280 C:\Windows\System32\usercpl.dll
   737280 C:\Windows\System32\UnifiedConsent.dll
   737280 C:\Windows\System32\mfh264enc.dll
   737280 C:\Windows\System32\riched20.dll
   736984 C:\Windows\System32\NgcIso.exe
   736960 C:\Windows\System32\RESAMPLEDMO.DLL
   733184 C:\Windows\System32\SettingsHandlers_Keyboard.dll
   733184 C:\Windows\System32\configmanager2.dll
   733184 C:\Windows\System32\WSAIFabricHost.dll
   729088 C:\Windows\System32\PeerDistCacheProvider.dll
   729088 C:\Windows\System32\gpprefcl.dll
   726624 C:\Windows\System32\HPScanTSDrvWn8.dll
   726400 C:\Windows\System32\VmEmulatedStorage.dll
   724992 C:\Windows\System32\cdpusersvc.dll
   724992 C:\Windows\System32\FirewallAPI.dll
   724992 C:\Windows\System32\elslad.dll
   723536 C:\Windows\System32\concrt140d.dll
   720896 C:\Windows\System32\ChatApis.dll
   720896 C:\Windows\System32\Windows.Devices.SmartCards.dll
   720424 C:\Windows\System32\AppResolver.dll
   720400 C:\Windows\System32\clbcatq.dll
   718240 C:\Windows\System32\vmusrv.dll
   716800 C:\Windows\System32\DesktopShellExt.dll
   712704 C:\Windows\System32\winspool.drv
   712704 C:\Windows\System32\Windows.Internal.OpenWithHost_WinUI3.dll
   712704 C:\Windows\System32\slui.exe
   712704 C:\Windows\System32\Windows.UI.Xaml.Resources.19h1.dll
   712704 C:\Windows\System32\Windows.UI.Xaml.Resources.21h1.dll
   708608 C:\Windows\System32\Windows.UI.Xaml.Resources.rs5.dll
   708608 C:\Windows\System32\ncsi.dll
   701848 C:\Windows\System32\PktMon.exe
   700416 C:\Windows\System32\ShareHost.dll
   700416 C:\Windows\System32\esevss.dll
   700416 C:\Windows\System32\wlidcli.dll
   700416 C:\Windows\System32\cloudAP.dll
   700416 C:\Windows\System32\SearchProtocolHost.exe
   699768 C:\Windows\System32\msvcrt.dll
   699760 C:\Windows\System32\MSVideoDSP.dll
   692224 C:\Windows\System32\LockController.dll
   692224 C:\Windows\System32\TpmTasks.dll
   692224 C:\Windows\System32\WUDFx.dll
   691520 C:\Windows\System32\d3d11on12.dll
   691504 C:\Windows\System32\sechost.dll
   691504 C:\Windows\System32\bcryptprimitives.dll
   690008 C:\Windows\System32\msvcp120_clr0400.dll
   688128 C:\Windows\System32\MicrosoftAccountWAMExtension.dll
   688128 C:\Windows\System32\BingOnlineServices.dll
   688128 C:\Windows\System32\uxtheme.dll
   687352 C:\Windows\System32\dnsrslvr.dll
   685440 C:\Windows\System32\microsoft-windows-system-events.dll
   684032 C:\Windows\System32\Windows.Media.Import.dll
   684032 C:\Windows\System32\SettingsHandlers_Flights.dll
   679936 C:\Windows\System32\SyncController.dll
   679936 C:\Windows\System32\qedit.dll
   679744 C:\Windows\System32\SqlServerSpatial150.dll
   679144 C:\Windows\System32\BioIso.exe
   677280 C:\Windows\System32\CloudExperienceHost.dll
   677248 C:\Windows\System32\VmDataStore.dll
   676676 C:\Windows\System32\perfh009.dat
   675840 C:\Windows\System32\FrameServerClient.dll
   675840 C:\Windows\System32\ntshrui.dll
   675840 C:\Windows\System32\QuietHours.dll
   675840 C:\Windows\System32\CredProvDataModel.dll
   674952 C:\Windows\System32\directmanipulation.dll
   674888 C:\Windows\System32\sxs.dll
   673224 C:\Windows\System32\AppVReporting.dll
   673088 C:\Windows\System32\mlang.dat
   671744 C:\Windows\System32\wifinetworkmanager.dll
   671744 C:\Windows\System32\gpedit.dll
   671744 C:\Windows\System32\provcore.dll
   671744 C:\Windows\System32\PhotoMetadataHandler.dll
   670816 C:\Windows\System32\taskschd.dll
   667648 C:\Windows\System32\duser.dll
   667648 C:\Windows\System32\Windows.Internal.OpenWithHost.dll
   667648 C:\Windows\System32\facecredentialprovider.dll
   667648 C:\Windows\System32\Windows.CloudStore.Schema.DesktopShell.dll
   667648 C:\Windows\System32\wpdshext.dll
   664960 C:\Windows\System32\SettingsHandlers_OptionalFeatures.dll
   663552 C:\Windows\System32\vbscript.dll
   662552 C:\Windows\System32\apphelp.dll
   658480 C:\Windows\System32\GenValObj.exe
   655360 C:\Windows\System32\EnterpriseAppMgmtSvc.dll
   655360 C:\Windows\System32\sppcext.dll
   655360 C:\Windows\System32\AudioEndpointBuilder.dll
   655360 C:\Windows\System32\tdhres.dll
   655360 C:\Windows\System32\TileDataRepository.dll
   652160 C:\Windows\System32\secfw_GenuineIntel.dll
   651264 C:\Windows\System32\Windows.UI.Xaml.Resources.rs4.dll
   651264 C:\Windows\System32\objsel.dll
   651264 C:\Windows\System32\usodocked.dll
   651264 C:\Windows\System32\wlidprov.dll
   651264 C:\Windows\System32\poqexec.exe
   651264 C:\Windows\System32\vdsdyn.dll
   648592 C:\Windows\System32\WerFault.exe
   647168 C:\Windows\System32\untfs.dll
   647168 C:\Windows\System32\MbaeApi.dll
   647168 C:\Windows\System32\Microsoft.Internal.FrameworkUdk.System.dll
   647168 C:\Windows\System32\azroles.dll
   646080 C:\Windows\System32\ucrtbase_enclave.dll
   646064 C:\Windows\System32\mfsensorgroup.dll
   641944 C:\Windows\System32\msvcp_win.dll
   640424 C:\Windows\System32\wimserv.exe
   638976 C:\Windows\System32\jscript9diag.dll
   638976 C:\Windows\System32\WFDSConMgrSvc.dll
   638976 C:\Windows\System32\Windows.Web.dll
   636288 C:\Windows\System32\acmigration.dll
   635440 C:\Windows\System32\libomp140.x86_64.dll
   634880 C:\Windows\System32\SmsRouterSvc.dll
   634880 C:\Windows\System32\ieui.dll
   634880 C:\Windows\System32\Windows.Internal.HardwareConfirmator.dll
   634880 C:\Windows\System32\PortableDeviceApi.dll
   633632 C:\Windows\System32\mf.dll
   632224 C:\Windows\System32\AppVCatalog.dll
   630784 C:\Windows\System32\netshell.dll
   630784 C:\Windows\System32\rdbui.dll
   630784 C:\Windows\System32\msvcp60.dll
   630784 C:\Windows\System32\bdesvc.dll
   630784 C:\Windows\System32\JpMapControl.dll
   630784 C:\Windows\System32\ddraw.dll
   630784 C:\Windows\System32\XpsFilt.dll
   629760 C:\Windows\System32\Windows.Internal.ShellCommon.dll
   629504 C:\Windows\System32\MMDevAPI.dll
   626688 C:\Windows\System32\PhoneOm.dll
   626688 C:\Windows\System32\Windows.Devices.Lights.dll
   626688 C:\Windows\System32\WMVXENCD.DLL
   626688 C:\Windows\System32\Windows.UI.Xaml.Resources.rs3.dll
   624032 C:\Windows\System32\NgcCtnr.dll
   622592 C:\Windows\System32\SettingsHandlers_A9.dll
   622592 C:\Windows\System32\RMActivate_isv.exe
   619904 C:\Windows\System32\UpdateCompression.dll
   618496 C:\Windows\System32\SettingsHandlers_Region.dll
   618496 C:\Windows\System32\d2d1debug3.dll
   618496 C:\Windows\System32\zipfldr.dll
   618496 C:\Windows\System32\AssignedAccessManager.dll
   615840 C:\Windows\System32\vmuidevices.dll
   614400 C:\Windows\System32\appwiz.cpl
   614400 C:\Windows\System32\msra.exe
   614400 C:\Windows\System32\uReFSv1.dll
   612256 C:\Windows\System32\domiprov.dll
   610304 C:\Windows\System32\smartscreen.exe
   610304 C:\Windows\System32\LanguageOverlayServer.dll
   608080 C:\Windows\System32\msvcp100.dll
   606208 C:\Windows\System32\CPFilters.dll
   606208 C:\Windows\System32\scesrv.dll
   606208 C:\Windows\System32\iprtrmgr.dll
   604808 C:\Windows\System32\FNTCACHE.DAT
   604736 C:\Windows\System32\Windows.Media.MediaControl.dll
   604736 C:\Windows\System32\Windows.Graphics.dll
   603576 C:\Windows\System32\vmflexio.dll
   603552 C:\Windows\System32\msv1_0.dll
   602112 C:\Windows\System32\themeui.dll
   602112 C:\Windows\System32\PrintWorkflowService.dll
   602112 C:\Windows\System32\nltest.exe
   602112 C:\Windows\System32\SettingsHandlers_OneCore_BatterySaver.dll
   600600 C:\Windows\System32\msvcp110_win.dll
   599424 C:\Windows\System32\vsconfig.dll
   598016 C:\Windows\System32\dsound.dll
   598016 C:\Windows\System32\fstx.dll
   598016 C:\Windows\System32\SessEnv.dll
   598016 C:\Windows\System32\scrptadm.dll
   597864 C:\Windows\System32\intel_gfx_api-x64.dll
   596992 C:\Windows\System32\hpzjcd01.dll
   595360 C:\Windows\System32\msdelta.dll
   593920 C:\Windows\System32\RMActivate.exe
   593920 C:\Windows\System32\srmscan.dll
   593920 C:\Windows\System32\SettingsHandlers_SpeechPrivacy.dll
   593920 C:\Windows\System32\osk.exe
   593920 C:\Windows\System32\AdmTmpl.dll
   593920 C:\Windows\System32\MidiSrv.exe
   593920 C:\Windows\System32\msdrm.dll
   592312 C:\Windows\System32\wlanapi.dll
   589824 C:\Windows\System32\psisdecd.dll
   589824 C:\Windows\System32\rascustom.dll
   589824 C:\Windows\System32\XAudio2_9.dll
   589824 C:\Windows\System32\inetcpl.cpl
   585728 C:\Windows\System32\sdohlp.dll
   585728 C:\Windows\System32\printfilterpipelinesvc.exe
   585728 C:\Windows\System32\MBMediaManager.dll
   585728 C:\Windows\System32\omadmclient.exe
   584712 C:\Windows\System32\hpwia2_lj177.dll
   584072 C:\Windows\System32\aepic.dll
   583096 C:\Windows\System32\AppVPublishing.dll
   581632 C:\Windows\System32\SettingsHandlers_UserAccount.dll
   581632 C:\Windows\System32\Microsoft.Bluetooth.UserService.dll
   581632 C:\Windows\System32\TextInputMethodFormatter.dll
   578976 C:\Windows\System32\vmserial.dll
   577536 C:\Windows\System32\WinBioDataModel.dll
   577536 C:\Windows\System32\profsvc.dll
   577536 C:\Windows\System32\SppExtComObj.Exe
   577536 C:\Windows\System32\SystemSettings.UserAccountsHandlers.dll
   577536 C:\Windows\System32\Windows.Media.Speech.UXRes.dll
   573440 C:\Windows\System32\laps.dll
   573440 C:\Windows\System32\aclui.dll
   573440 C:\Windows\System32\ncryptprov.dll
   573440 C:\Windows\System32\mbsmsapi.dll
   571760 C:\Windows\System32\ShareTargets.dll
   571688 C:\Windows\System32\wow64win.dll
   570784 C:\Windows\System32\spwizeng.dll
   569344 C:\Windows\System32\rdpclip.exe
   569344 C:\Windows\System32\AarSvc.dll
   569344 C:\Windows\System32\cmdial32.dll
   569344 C:\Windows\System32\modernexecserver.dll
   569344 C:\Windows\System32\wvc.dll
   567328 C:\Windows\System32\msvcp140_clr0400.dll
   565248 C:\Windows\System32\DeviceEnroller.exe
   565248 C:\Windows\System32\MitigationClient.dll
   565248 C:\Windows\System32\PhotoScreensaver.scr
   565248 C:\Windows\System32\SettingsHandlers_BatteryUsage.dll
   563392 C:\Windows\System32\DMRServer.dll
   562576 C:\Windows\System32\plutonksp.dll
   561152 C:\Windows\System32\Windows.Networking.UX.EapRequestHandler.dll
   561152 C:\Windows\System32\PrintRenderAPIHost.DLL
   561152 C:\Windows\System32\licensingdiag.exe
   561152 C:\Windows\System32\CoreShellAPI.dll
   561152 C:\Windows\System32\defragsvc.dll
   559280 C:\Windows\System32\MFPlay.dll
   559272 C:\Windows\System32\Faultrep.dll
   557056 C:\Windows\System32\IESettingSync.exe
   557056 C:\Windows\System32\msdt.exe
   557056 C:\Windows\System32\SearchFolder.dll
   557056 C:\Windows\System32\NetworkUXBroker.dll
   557056 C:\Windows\System32\ShellHost.exe
   555296 C:\Windows\System32\hpzjcd01scan.dll
   554384 C:\Windows\System32\aemarebackup.dll
   553552 C:\Windows\System32\msvcp140.dll
   552960 C:\Windows\System32\vfpctrl.exe
   552960 C:\Windows\System32\DispBroker.dll
   552960 C:\Windows\System32\mdmregistration.dll
   552960 C:\Windows\System32\ChxAPDS.dll
   552960 C:\Windows\System32\shdocvw.dll
   552760 C:\Windows\System32\SIHClient.exe
   550288 C:\Windows\System32\vmpmem.dll
   548864 C:\Windows\System32\Windows.Data.Activities.dll
   548864 C:\Windows\System32\ngcutils.dll
   548864 C:\Windows\System32\FWPUCLNT.DLL
   544904 C:\Windows\System32\ze_tracing_layer.dll
   544768 C:\Windows\System32\Windows.Devices.SmartCards.Phone.dll
   544768 C:\Windows\System32\WwaApi.dll
   544768 C:\Windows\System32\SettingsHandlers_Notifications.dll
   544768 C:\Windows\System32\Windows.Internal.Devices.Bluetooth.dll
   544768 C:\Windows\System32\MapConfiguration.dll
   542080 C:\Windows\System32\generaltel.dll
   540672 C:\Windows\System32\mprapi.dll
   540672 C:\Windows\System32\wlanmsm.dll
   540672 C:\Windows\System32\certreq.exe
   536576 C:\Windows\System32\ResourceMapper.dll
   536576 C:\Windows\System32\msihnd.dll
   533920 C:\Windows\System32\rdpinit.exe
   533888 C:\Windows\System32\IasMigPlugin.dll
   532480 C:\Windows\System32\Print.PrintSupport.Source.dll
   532480 C:\Windows\System32\spaceutil.exe
   532480 C:\Windows\System32\nettrace.dll
   530336 C:\Windows\System32\wintrust.dll
   528384 C:\Windows\System32\SmartCardSimulator.dll
   528384 C:\Windows\System32\upnphost.dll
   528384 C:\Windows\System32\localsec.dll
   528384 C:\Windows\System32\glmf32.dll
   528384 C:\Windows\System32\actxprxy.dll
   528384 C:\Windows\System32\Windows.UI.AppDefaults.dll
   525712 C:\Windows\System32\NetMgmtIF.dll
   524288 C:\Windows\System32\RMActivate_ssp_isv.exe
   524288 C:\Windows\System32\SyncCenter.dll
   524288 C:\Windows\System32\d3dconfig.exe
   524288 C:\Windows\System32\RMActivate_ssp.exe
   524288 C:\Windows\System32\SettingsHandlers_CapabilityAccess.dll
   524288 C:\Windows\System32\BthAvctpSvc.dll
   524288 C:\Windows\System32\dsregcmd.exe
   524288 C:\Windows\System32\wcncsvc.dll
   524288 C:\Windows\System32\ChxHAPDS.dll
   522096 C:\Windows\System32\coml2.dll
   521616 C:\Windows\System32\bcdedit.exe
   520192 C:\Windows\System32\Microsoft.Data.UsageAndQualityInsights.dll
   520192 C:\Windows\System32\mpunits.dll
   520192 C:\Windows\System32\Windows.ApplicationModel.Wallet.dll
   520192 C:\Windows\System32\AssignedAccessCsp.dll
   520192 C:\Windows\System32\SettingsHandlers_Pen.dll
   520192 C:\Windows\System32\imapi2.dll
   517520 C:\Windows\System32\vmsynthstor.dll
   517504 C:\Windows\System32\gpupvdev.dll
   516096 C:\Windows\System32\catsrvut.dll
   516096 C:\Windows\System32\certcli.dll
   516096 C:\Windows\System32\Windows.UI.Xaml.Resources.rs2.dll
   516096 C:\Windows\System32\PlayToManager.dll
   516096 C:\Windows\System32\cryptngc.dll
   515152 C:\Windows\System32\DynamicMedium.bin
   513824 C:\Windows\System32\fclip.exe
   512000 C:\Windows\System32\windows.internal.shellcommon.shareexperience.dll
   512000 C:\Windows\System32\SearchFilterHost.exe
   512000 C:\Windows\System32\winipcfile.dll
   512000 C:\Windows\System32\Windows.Payments.dll
   512000 C:\Windows\System32\ninput.dll
   509688 C:\Windows\System32\WWanAPI.dll
   509408 C:\Windows\System32\QualityUpdateAssistant.dll
   507904 C:\Windows\System32\DscCore.dll
   507904 C:\Windows\System32\catsrv.dll
   507904 C:\Windows\System32\shwebsvc.dll
   507904 C:\Windows\System32\MSFlacDecoder.dll
   507904 C:\Windows\System32\DeveloperOptionsSettingsHandlers.dll
   505232 C:\Windows\System32\invagent.dll
   503808 C:\Windows\System32\Windows.Internal.UI.Dialogs.dll
   503808 C:\Windows\System32\installmon.dll
   503808 C:\Windows\System32\mprdim.dll
   503808 C:\Windows\System32\MicrosoftAccountExtension.dll
   503808 C:\Windows\System32\Microsoft.Uev.Office2013CustomActions.dll
   503808 C:\Windows\System32\DDDS.dll
   502144 C:\Windows\System32\d3dref9.dll
   499712 C:\Windows\System32\themecpl.dll
   499712 C:\Windows\System32\Microsoft.Uev.PrinterCustomActions.dll
   499712 C:\Windows\System32\DXP.dll
   499712 C:\Windows\System32\SettingsHandlers_InputPersonalization.dll
   498592 C:\Windows\System32\hpbuiodm64.dll
   496400 C:\Windows\System32\SettingsHandlers_DesktopTaskbar.dll
   495616 C:\Windows\System32\mtxclu.dll
   495616 C:\Windows\System32\RTMediaFrame.dll
   495616 C:\Windows\System32\SettingsHandlers_Gaming.dll
   495616 C:\Windows\System32\upnp.dll
   495616 C:\Windows\System32\ipsmsnap.dll
   495616 C:\Windows\System32\wbemcomn.dll
   495616 C:\Windows\System32\SettingsHandlers_WorkAccess.dll
   495616 C:\Windows\System32\credprovhost.dll
   492912 C:\Windows\System32\sedplugins.dll
   491520 C:\Windows\System32\srcore.dll
   491520 C:\Windows\System32\oleacc.dll
   491520 C:\Windows\System32\LicensingDiagSpp.dll
   489056 C:\Windows\System32\ws2_32.dll
   489008 C:\Windows\System32\mftranscode.dll
   487424 C:\Windows\System32\Windows.Internal.PredictionUnit.dll
   487424 C:\Windows\System32\vmvpci.dll
   487424 C:\Windows\System32\Midi2.KSAggregateTransport.dll
   487424 C:\Windows\System32\smbwmiv2.dll
   487424 C:\Windows\System32\NetSetupShim.dll
   484904 C:\Windows\System32\Windows.Graphics.Display.DisplayEnhancementOverride.dll
   483328 C:\Windows\System32\BcastDVRClient.dll
   483328 C:\Windows\System32\Windows.Devices.LowLevel.dll
   483328 C:\Windows\System32\pairtool.exe
   483328 C:\Windows\System32\MDEServer.exe
   480768 C:\Windows\System32\AUDIOKSE.dll
   480672 C:\Windows\System32\computestorage.dll
   479232 C:\Windows\System32\vmrdvcore.dll
   479232 C:\Windows\System32\ChtCangjieDS.dll
   479232 C:\Windows\System32\Windows.Devices.WiFiDirect.dll
   479232 C:\Windows\System32\ntprint.dll
   476656 C:\Windows\System32\hnetcfg.dll
   476576 C:\Windows\System32\kd_02_10ec.dll
   476544 C:\Windows\System32\cmdiag.exe
   476160 C:\Windows\System32\Windows.Internal.Shell.CloudDesktop.TransitionScreen.dll
   475136 C:\Windows\System32\dxtmsft.dll
   475136 C:\Windows\System32\tdh.dll
   475136 C:\Windows\System32\swprv.dll
   475136 C:\Windows\System32\es.dll
   475136 C:\Windows\System32\Wldap32.dll
   475136 C:\Windows\System32\ChtBopomofoDS.dll
   475136 C:\Windows\System32\wosc.dll
   475136 C:\Windows\System32\SettingsHandlers_Display.dll
   475136 C:\Windows\System32\SettingsHandlers_Accessibility.dll
   475136 C:\Windows\System32\ChtHkStrokeDS.dll
   475136 C:\Windows\System32\ChsStrokeDS.dll
   474112 C:\Windows\System32\OobeWv2Host.dll
   473504 C:\Windows\System32\vfprint.dll
   472520 C:\Windows\System32\AcGenral.dll
   472448 C:\Windows\System32\dhcpcore.dll
   471040 C:\Windows\System32\rasdlg.dll
   471040 C:\Windows\System32\ChtQuickDS.dll
   466944 C:\Windows\System32\dxdiagn.dll
   466944 C:\Windows\System32\Geolocation.dll
   466944 C:\Windows\System32\WalletService.dll
   466944 C:\Windows\System32\Windows.Cortana.Desktop.dll
   466944 C:\Windows\System32\PeerDistSh.dll
   466944 C:\Windows\System32\PushToInstall.dll
   466944 C:\Windows\System32\Windows.Devices.Midi.dll
   464280 C:\Windows\System32\VmSynthNic.dll
   464232 C:\Windows\System32\AudioSrvPolicyManager.dll
   462960 C:\Windows\System32\msvcp140_2d.dll
   462848 C:\Windows\System32\Windows.UI.Xaml.Resources.rs1.dll
   462848 C:\Windows\System32\CloudDomainJoinDataModelServer.dll
   462848 C:\Windows\System32\qdvd.dll
   461080 C:\Windows\System32\vfbasics.dll
   460232 C:\Windows\System32\TransportDSA.dll
   460184 C:\Windows\System32\thumbcache.dll
   460184 C:\Windows\System32\BootCriticalUpdatePlugin.dll
   458752 C:\Windows\System32\LockHostingFramework.dll
   458752 C:\Windows\System32\dusmsvc.dll
   458752 C:\Windows\System32\xwizards.dll
   458752 C:\Windows\System32\SettingsHandlers_Lighting.dll
   458752 C:\Windows\System32\CapabilityAccessManagerClient.dll
   458752 C:\Windows\System32\Windows.Shell.BlueLightReduction.dll
   458752 C:\Windows\System32\uireng.dll
   458240 C:\Windows\System32\UXFrame.dll
   456096 C:\Windows\System32\ThreatIntelligence.dll
   456000 C:\Windows\System32\tprtdll.dll
   454656 C:\Windows\System32\Windows.ApplicationModel.LockScreen.dll
   454656 C:\Windows\System32\Midi2.KSTransport.dll
   454656 C:\Windows\System32\BioCredProv.dll
   454656 C:\Windows\System32\DXCpl.exe
   450560 C:\Windows\System32\aadauthhelper.dll
   450560 C:\Windows\System32\provplatformdesktop.dll
   447888 C:\Windows\System32\AppxAllUserStore.dll
   447696 C:\Windows\System32\CredentialEnrollmentManager.exe
   447696 C:\Windows\System32\mswsock.dll
   447360 C:\Windows\System32\UIEOrchestrator.exe
   446464 C:\Windows\System32\appmgr.dll
   446464 C:\Windows\System32\PrintScanBrokerService.dll
   446464 C:\Windows\System32\Windows.UI.PicturePassword.dll
   446464 C:\Windows\System32\netprofm.dll
   446464 C:\Windows\System32\SettingsHandlers_AssignedAccess.dll
   446464 C:\Windows\System32\DictationManager.dll
   443584 C:\Windows\System32\tsmf.dll
   442368 C:\Windows\System32\CryptoWinRT.dll
   442368 C:\Windows\System32\wlangpui.dll
   442368 C:\Windows\System32\sysmon.ocx
   442368 C:\Windows\System32\termmgr.dll
   442368 C:\Windows\System32\drvinst.exe
   442368 C:\Windows\System32\puiobj.dll
   442368 C:\Windows\System32\DeviceSetupManager.dll
   442368 C:\Windows\System32\Windows.Devices.Picker.dll
   439728 C:\Windows\System32\vmprox.dll
   439680 C:\Windows\System32\hwreqchk.dll
   439680 C:\Windows\System32\nvspinfo.exe
   438272 C:\Windows\System32\edgeIso.dll
   438272 C:\Windows\System32\NgcCtnrGidsHandler.dll
   438272 C:\Windows\System32\dafBth.dll
   438272 C:\Windows\System32\bdechangepin.exe
   438272 C:\Windows\System32\WMPhoto.dll
   438272 C:\Windows\System32\wwanprotdim.dll
   438272 C:\Windows\System32\html.iec
   438272 C:\Windows\System32\SensorsApi.dll
   435296 C:\Windows\System32\ActivationVdev.dll
   434176 C:\Windows\System32\mfmjpegdec.dll
   434176 C:\Windows\System32\srvsvc.dll
   434176 C:\Windows\System32\umrdp.dll
   434176 C:\Windows\System32\SettingsHandlers_Authentication.dll
   434176 C:\Windows\System32\SmartActionPlatform.dll
   434176 C:\Windows\System32\iedkcs32.dll
   434176 C:\Windows\System32\IPSECSVC.DLL
   432496 C:\Windows\System32\GameInput.dll
   431560 C:\Windows\System32\vmsmb.dll
   431200 C:\Windows\System32\shlwapi.dll
   430080 C:\Windows\System32\RDXTaskFactory.dll
   430080 C:\Windows\System32\msdtckrm.dll
   430080 C:\Windows\System32\tracerpt.exe
   430080 C:\Windows\System32\iassdo.dll
   430080 C:\Windows\System32\mscoree.dll
   430080 C:\Windows\System32\azroleui.dll
   430080 C:\Windows\System32\Windows.UI.CredDialogController.dll
   430080 C:\Windows\System32\SettingsHandlers_Gpu.dll
   430080 C:\Windows\System32\BingASDS.dll
   427096 C:\Windows\System32\TpmEngUM.dll
   425984 C:\Windows\System32\LockScreenData.dll
   425984 C:\Windows\System32\SettingsHandlers_User.dll
   425984 C:\Windows\System32\vaultsvc.dll
   425984 C:\Windows\System32\policymanagerprecheck.dll
   425984 C:\Windows\System32\Phoneutil.dll
   425984 C:\Windows\System32\secproc_isv.dll
   425984 C:\Windows\System32\secproc.dll
   425984 C:\Windows\System32\NaturalAuth.dll
   425984 C:\Windows\System32\syncutil.dll
   425984 C:\Windows\System32\IppCommon.dll
   425984 C:\Windows\System32\InstallServiceTasks.dll
   425984 C:\Windows\System32\wksprt.exe
   423296 C:\Windows\System32\input.dll
   422960 C:\Windows\System32\wldp.dll
   421888 C:\Windows\System32\LockAppBroker.dll
   421888 C:\Windows\System32\adsnt.dll
   419952 C:\Windows\System32\vcamp140.dll
   419232 C:\Windows\System32\plutonapi.dll
   418944 C:\Windows\System32\SynTPEnhService.exe
   418792 C:\Windows\System32\d3d10level9.dll
   417792 C:\Windows\System32\SettingsHandlers_Fonts.dll
   417792 C:\Windows\System32\taskcomp.dll
   417792 C:\Windows\System32\Windows.Internal.Graphics.Display.DisplayColorManagement.dll
   417792 C:\Windows\System32\LocationApi.dll
   417792 C:\Windows\System32\SDDS.dll
   417792 C:\Windows\System32\SyncInfrastructure.dll
   417792 C:\Windows\System32\RasMediaManager.dll
   417792 C:\Windows\System32\wlanui.dll
   417792 C:\Windows\System32\AppxSip.dll
   417792 C:\Windows\System32\DavSyncProvider.dll
   417792 C:\Windows\System32\WinSATAPI.dll
   413696 C:\Windows\System32\WMVSENCD.DLL
   413696 C:\Windows\System32\SysFxUI.dll
   413696 C:\Windows\System32\credprovs.dll
   413696 C:\Windows\System32\resutils.dll
   413696 C:\Windows\System32\FrameServerMonitor.dll
   413696 C:\Windows\System32\appinfo.dll
   413696 C:\Windows\System32\SettingsHandlers_OneCore_PowerAndSleep.dll
   413696 C:\Windows\System32\NotificationControllerPS.dll
   410504 C:\Windows\System32\directxdatabasehelper.dll
   410504 C:\Windows\System32\MP4SDECD.DLL
   409600 C:\Windows\System32\WiFiDisplay.dll
   409600 C:\Windows\System32\AcLayers.dll
   409600 C:\Windows\System32\hdwwiz.cpl
   409600 C:\Windows\System32\wpnclient.dll
   409600 C:\Windows\System32\Windows.Networking.NetworkOperators.ESim.dll
   409600 C:\Windows\System32\Windows.Internal.UI.Shell.WindowTabManager.dll
   409600 C:\Windows\System32\TaskApis.dll
   406944 C:\Windows\System32\VmEmulatedNic.dll
   406400 C:\Windows\System32\Windows.Storage.ApplicationData.dll
   406376 C:\Windows\System32\winsta.dll
   405504 C:\Windows\System32\HeatCore.dll
   405504 C:\Windows\System32\provengine.dll
   405504 C:\Windows\System32\dot3svc.dll
   405504 C:\Windows\System32\CertEnrollUI.dll
   405504 C:\Windows\System32\AboveLockAppHost.dll
   405504 C:\Windows\System32\winsku.dll
   405504 C:\Windows\System32\PickerPlatform.dll
   402816 C:\Windows\System32\nmscrub.exe
   402296 C:\Windows\System32\verifier.dll
   401408 C:\Windows\System32\wpr.exe
   401408 C:\Windows\System32\SyncSettings.dll
   401408 C:\Windows\System32\SustainabilityService.dll
   398760 C:\Windows\System32\InventorySvc.dll
   398736 C:\Windows\System32\vmdynmem.dll
   398160 C:\Windows\System32\LsaIso.exe
   398160 C:\Windows\System32\powrprof.dll
   398136 C:\Windows\System32\Windows.System.Power.Thermal.dll
   397312 C:\Windows\System32\fwpolicyiomgr.dll
   397312 C:\Windows\System32\Midi2.LoopbackMidiTransport.dll
   397312 C:\Windows\System32\MSFlacEncoder.dll
   397312 C:\Windows\System32\stobject.dll
   397312 C:\Windows\System32\msTextPrediction.dll
   397312 C:\Windows\System32\BthAvrcp.dll
   397312 C:\Windows\System32\mmsys.cpl
   397312 C:\Windows\System32\Search.ProtocolHandler.MAPI2.dll
   397312 C:\Windows\System32\fhcfg.dll
   397312 C:\Windows\System32\Windows.Gaming.Preview.dll
   397312 C:\Windows\System32\Windows.StateRepositoryUpgrade.dll
   397312 C:\Windows\System32\apisampling.dll
   397312 C:\Windows\System32\DAFIPP.dll
   394000 C:\Windows\System32\capauthz.dll
   394000 C:\Windows\System32\BCP47Langs.dll
   393216 C:\Windows\System32\WPDSp.dll
   393216 C:\Windows\System32\fhcpl.dll
   393216 C:\Windows\System32\prnntfy.dll
   393216 C:\Windows\System32\psr.exe
   393216 C:\Windows\System32\Windows.Networking.BackgroundTransfer.ContentPrefetchTask.dll
   393216 C:\Windows\System32\Windows.UI.BlockedShutdown.dll
   393216 C:\Windows\System32\EthernetMediaManager.dll
   393216 C:\Windows\System32\Windows.Internal.Signals.dll
   393216 C:\Windows\System32\WinHvPlatform.dll
   393216 C:\Windows\System32\wkssvc.dll
   393216 C:\Windows\System32\chxinputrouter.dll
   389872 C:\Windows\System32\ExecModelClient.dll
   389120 C:\Windows\System32\wlancfg.dll
   389120 C:\Windows\System32\filemgmt.dll
   389120 C:\Windows\System32\ddisplay.dll
   389120 C:\Windows\System32\msdtcuiu.dll
   389120 C:\Windows\System32\UserMgrProxy.dll
   389120 C:\Windows\System32\ConsoleLogon.dll
   386432 C:\Windows\System32\nonarpinv.dll
   385752 C:\Windows\System32\wscsvc.dll
   385712 C:\Windows\System32\MrmDeploy.dll
   385528 C:\Windows\System32\vsjitdebugger.exe
   385024 C:\Windows\System32\cryptui.dll
   385024 C:\Windows\System32\mswmdm.dll
   385024 C:\Windows\System32\pcsvDevice.dll
   385024 C:\Windows\System32\TpmTool.exe
   382368 C:\Windows\System32\CiTool.exe
   382368 C:\Windows\System32\vmiccore.dll
   382336 C:\Windows\System32\CloudExperienceHostBroker.dll
   382336 C:\Windows\System32\NetworkBindingEngineMigPlugin.dll
   380928 C:\Windows\System32\dosettings.dll
   380928 C:\Windows\System32\ApplicationTargetedFeatureDatabase.dll
   380928 C:\Windows\System32\msinfo32.exe
   380928 C:\Windows\System32\XpsDocumentTargetPrint.dll
   380928 C:\Windows\System32\QuickActionsDataModel.dll
   380928 C:\Windows\System32\wbadmin.exe
   380928 C:\Windows\System32\eudcedit.exe
   380928 C:\Windows\System32\wincorlib.dll
   378272 C:\Windows\System32\ksproxy.ax
   378240 C:\Windows\System32\HvsiSettingsProvider.dll
   377488 C:\Windows\System32\biwinrt.dll
   376832 C:\Windows\System32\ipsecsnp.dll
   376832 C:\Windows\System32\fveui.dll
   376832 C:\Windows\System32\rasmontr.dll
   376832 C:\Windows\System32\mssvp.dll
   376832 C:\Windows\System32\perf_gputiming.dll
   376832 C:\Windows\System32\OneBackupHandler.dll
   376832 C:\Windows\System32\DMPushRouterCore.dll
   376832 C:\Windows\System32\XpsGdiConverter.dll
   376832 C:\Windows\System32\WmpDui.dll
   376832 C:\Windows\System32\Windows.Devices.WiFi.dll
   376832 C:\Windows\System32\AccountsRt.dll
   376832 C:\Windows\System32\dmdlgs.dll
   376832 C:\Windows\System32\ProximityService.dll
   376832 C:\Windows\System32\WiFiCloudStore.dll
   376832 C:\Windows\System32\UserDataAccountApis.dll
   376832 C:\Windows\System32\PlayToDevice.dll
   374152 C:\Windows\System32\SenseSubAuth.dll
   372736 C:\Windows\System32\tapisrv.dll
   372736 C:\Windows\System32\fvecpl.dll
   372736 C:\Windows\System32\energyprov.dll
   372736 C:\Windows\System32\SettingsHandlers_Cortana.dll
   372736 C:\Windows\System32\GameBarPresenceWriter.exe
   372736 C:\Windows\System32\jpndecoder.dll
   370104 C:\Windows\System32\AppVScripting.dll
   370088 C:\Windows\System32\offfilt.dll
   370048 C:\Windows\System32\unattend.dll
   369256 C:\Windows\System32\wmpps.dll
   368640 C:\Windows\System32\fhsettingsprovider.dll
   368640 C:\Windows\System32\BitLockerCsp.dll
   368640 C:\Windows\System32\AppLockerCSP.dll
   368640 C:\Windows\System32\dmenterprisediagnostics.dll
   368640 C:\Windows\System32\pku2u.dll
   368640 C:\Windows\System32\dafWfdProvider.dll
   368640 C:\Windows\System32\Windows.Networking.Proximity.dll
   368640 C:\Windows\System32\authfwcfg.dll
   368640 C:\Windows\System32\rasgcw.dll
   368640 C:\Windows\System32\provhandlers.dll
   368640 C:\Windows\System32\ChxDecoder.dll
   368640 C:\Windows\System32\ncbservice.dll
   365984 C:\Windows\System32\hcsdiag.exe
   365952 C:\Windows\System32\microsoft-windows-kernel-power-events.dll
   365096 C:\Windows\System32\TpmEngUM138.dll
   365096 C:\Windows\System32\rdpendp.dll
   365088 C:\Windows\System32\cfgmgr32.dll
   364544 C:\Windows\System32\SettingsHandlers_ManagePhone.dll
   364544 C:\Windows\System32\mscandui.dll
   364544 C:\Windows\System32\pnpdiag.dll
   364544 C:\Windows\System32\eapphost.dll
   364544 C:\Windows\System32\DataExchange.dll
   364544 C:\Windows\System32\Windows.Internal.Devices.Sensors.dll
   364544 C:\Windows\System32\scecli.dll
   361888 C:\Windows\System32\kd_02_8086.dll
   361856 C:\Windows\System32\cimfs.dll
   360448 C:\Windows\System32\AppIdPolicyEngineApi.dll
   360448 C:\Windows\System32\pcaui.dll
   360448 C:\Windows\System32\APHostService.dll
   360448 C:\Windows\System32\notepad.exe
   360448 C:\Windows\System32\HidCfu.dll
   360448 C:\Windows\System32\RADCUI.dll
   357784 C:\Windows\System32\WUDFHost.exe
   357760 C:\Windows\System32\WindowsSandboxClient.exe
   356816 C:\Windows\System32\wow64.dll
   356352 C:\Windows\System32\UserDeviceRegistration.Ngc.dll
   356352 C:\Windows\System32\wcnwiz.dll
   356352 C:\Windows\System32\ubpm.dll
   356352 C:\Windows\System32\qwave.dll
   356352 C:\Windows\System32\RecoveryDrive.exe
   356352 C:\Windows\System32\msutb.dll
   356352 C:\Windows\System32\TtlsAuth.dll
   356352 C:\Windows\System32\diskraid.exe
   356352 C:\Windows\System32\Windows.System.Diagnostics.dll
   356352 C:\Windows\System32\MBR2GPT.EXE
   356352 C:\Windows\System32\discan.dll
   356352 C:\Windows\System32\Windows.Gaming.XboxLive.Storage.dll
   352696 C:\Windows\System32\wevtapi.dll
   352256 C:\Windows\System32\dot3ui.dll
   352256 C:\Windows\System32\pdh.dll
   352256 C:\Windows\System32\ndfapi.dll
   352256 C:\Windows\System32\sppcomapi.dll
   352256 C:\Windows\System32\srumsvc.dll
   352256 C:\Windows\System32\rastlsext.dll
   352256 C:\Windows\System32\Windows.ApplicationModel.Store.TestingFramework.dll
   350856 C:\Windows\System32\vccorlib140.dll
   349584 C:\Windows\System32\icsvc.dll
   349568 C:\Windows\System32\CmAgent.dll
   348160 C:\Windows\System32\DesktopSwitcherDataModel.dll
   348160 C:\Windows\System32\photowiz.dll
   348160 C:\Windows\System32\MicrosoftAccountCloudAP.dll
   348160 C:\Windows\System32\eapp3hst.dll
   348160 C:\Windows\System32\newdev.dll
   348160 C:\Windows\System32\TieringEngineService.exe
   348160 C:\Windows\System32\SettingsHandlers_HumanPresence.dll
   344064 C:\Windows\System32\pwlauncher.dll
   344064 C:\Windows\System32\provops.dll
   344064 C:\Windows\System32\sti.dll
   344064 C:\Windows\System32\url.dll
   344064 C:\Windows\System32\SCardSvr.dll
   344064 C:\Windows\System32\cmd.exe
   344064 C:\Windows\System32\pcrpf.dll
   344064 C:\Windows\System32\tscfgwmi.dll
   344064 C:\Windows\System32\UIAnimation.dll
   344064 C:\Windows\System32\eeprov.dll
   344064 C:\Windows\System32\DAFMCP.dll
   340256 C:\Windows\System32\skci.dll
   339968 C:\Windows\System32\Windows.Management.InprocObjects.dll
   339968 C:\Windows\System32\sppcommdlg.dll
   339968 C:\Windows\System32\DevicePairing.dll
   339968 C:\Windows\System32\Microsoft.Uev.CscUnpinTool.exe
   339968 C:\Windows\System32\msieftp.dll
   339968 C:\Windows\System32\nshipsec.dll
   337320 C:\Windows\System32\icsvcvss.dll
   337304 C:\Windows\System32\dhcpcore6.dll
   336176 C:\Windows\System32\WMVSDECD.DLL
   335872 C:\Windows\System32\WsmWmiPl.dll
   335872 C:\Windows\System32\rasppp.dll
   335872 C:\Windows\System32\dlnashext.dll
   335872 C:\Windows\System32\dot3gpui.dll
   335872 C:\Windows\System32\DiagnosticLogCSP.dll
   335872 C:\Windows\System32\cdd.dll
   335872 C:\Windows\System32\wc_storage.dll
   335872 C:\Windows\System32\sppnp.dll
   335872 C:\Windows\System32\wuceffects.dll
   335872 C:\Windows\System32\rstrui.exe
   335872 C:\Windows\System32\ActionCenter.dll
   333208 C:\Windows\System32\vmicvdev.dll
   333184 C:\Windows\System32\mssecuser.dll
   331776 C:\Windows\System32\connect.dll
   331776 C:\Windows\System32\wpnservice.dll
   331776 C:\Windows\System32\SettingsHandlers_Maps.dll
   331776 C:\Windows\System32\MicrosoftAccountTokenProvider.dll
   331776 C:\Windows\System32\Windows.Devices.Usb.dll
   331776 C:\Windows\System32\Windows.Energy.dll
   331776 C:\Windows\System32\tpmvsc.dll
   331776 C:\Windows\System32\wersvc.dll
   331776 C:\Windows\System32\PowerGridForecastTask.dll
   331776 C:\Windows\System32\EsclScan.dll
   331776 C:\Windows\System32\Windows.UI.Accessibility.dll
   331776 C:\Windows\System32\SettingsHandlers_PCDisplayRemote.dll
   331776 C:\Windows\System32\provisioningcsp.dll
   331776 C:\Windows\System32\dpapisrv.dll
   331776 C:\Windows\System32\StorageUsage.dll
   331776 C:\Windows\System32\fidocredprov.dll
   331264 C:\Windows\System32\HPTcpMon.dll
   329128 C:\Windows\System32\Dism.exe
   329112 C:\Windows\System32\vp9fs.dll
   329088 C:\Windows\System32\VmCrashDump.dll
   327680 C:\Windows\System32\VsGraphicsExperiment.dll
   327680 C:\Windows\System32\authz.dll
   327680 C:\Windows\System32\FirewallControlPanel.dll
   327680 C:\Windows\System32\cscobj.dll
   327680 C:\Windows\System32\ConsentUxClient.dll
   327680 C:\Windows\System32\eappcfg.dll
   327680 C:\Windows\System32\DeviceDirectoryClient.dll
   327680 C:\Windows\System32\PenService.dll
   327680 C:\Windows\System32\dxdiag.exe
   327680 C:\Windows\System32\ssdpsrv.dll
   327680 C:\Windows\System32\WindowsCodecsExt.dll
   326656 C:\Windows\System32\CloudIdWxhExtension.dll
   325032 C:\Windows\System32\vmsif.dll
   324074 C:\Windows\System32\perfi00A.dat
   323656 C:\Windows\System32\WMASF.DLL
   323584 C:\Windows\System32\MTFServer.dll
   323584 C:\Windows\System32\vaultcli.dll
   323584 C:\Windows\System32\Win32CompatibilityAppraiserCSP.dll
   323584 C:\Windows\System32\lltdsvc.dll
   323584 C:\Windows\System32\eappcfgui.dll
   323584 C:\Windows\System32\PhoneProviders.dll
   323584 C:\Windows\System32\DaOtpCredentialProvider.dll
   323584 C:\Windows\System32\unimdm.tsp
   323584 C:\Windows\System32\EaseOfAccessDialog.exe
   323584 C:\Windows\System32\DAFWSD.dll
   323584 C:\Windows\System32\wisp.dll
   323152 C:\Windows\System32\DynamicShort.bin
   323088 C:\Windows\System32\ControlLib.dll
   321664 C:\Windows\System32\SynTPAPI.dll
   321648 C:\Windows\System32\concrt140.dll
   319600 C:\Windows\System32\MSWB7.dll
   319488 C:\Windows\System32\fveskybackup.dll
   319488 C:\Windows\System32\RdpRelayTransport.dll
   319488 C:\Windows\System32\MtfDecoder.dll
   319488 C:\Windows\System32\wdigest.dll
   319488 C:\Windows\System32\NetSetupSvc.dll
   319488 C:\Windows\System32\ddputils.dll
   319488 C:\Windows\System32\wlidcredprov.dll
   319488 C:\Windows\System32\FrameServerMonitorClient.dll
   319488 C:\Windows\System32\WpcApi.dll
   319488 C:\Windows\System32\framedynos.dll
   317440 C:\Windows\System32\HPTcpMUI.dll
   316816 C:\Windows\System32\tcbloader.dll
   316448 C:\Windows\System32\vfluapriv.dll
   315392 C:\Windows\System32\bthserv.dll
   315392 C:\Windows\System32\Windows.Internal.Devices.Lights.BacklightServer.dll
   315392 C:\Windows\System32\srchadmin.dll
   315392 C:\Windows\System32\accessibilitycpl.dll
   315392 C:\Windows\System32\tcpmon.dll
   315392 C:\Windows\System32\DxpTaskSync.dll
   315392 C:\Windows\System32\mcmsvc.dll
   315392 C:\Windows\System32\netdiagfx.dll
   315392 C:\Windows\System32\adsldp.dll
   315392 C:\Windows\System32\AggregatorHost.exe
   315392 C:\Windows\System32\Utilman.exe
   312928 C:\Windows\System32\HPWia2DrvRootWn8.dll
   312728 C:\Windows\System32\CloudExperienceHostUser.dll
   311360 C:\Windows\System32\SndVol.exe
   311336 C:\Windows\System32\wkspbroker.exe
   311336 C:\Windows\System32\ttdinject.exe
   311296 C:\Windows\System32\Vault.dll
   311296 C:\Windows\System32\NetworkIcon.dll
   311296 C:\Windows\System32\EnterpriseModernAppMgmtCSP.dll
   311296 C:\Windows\System32\xpspushlayer.dll
   311296 C:\Windows\System32\Windows.Cortana.OneCore.dll
   311296 C:\Windows\System32\CXHProvisioningServer.dll
   311296 C:\Windows\System32\InputCloudStore.dll
   311296 C:\Windows\System32\Dxpserver.exe
   308632 C:\Windows\System32\wusys.dll
   308608 C:\Windows\System32\offlinesam.dll
   307224 C:\Windows\System32\sspicli.dll
   307200 C:\Windows\System32\Windows.UI.Storage.dll
   307200 C:\Windows\System32\windowslivelogin.dll
   307200 C:\Windows\System32\Microsoft.Bluetooth.Proxy.dll
   307200 C:\Windows\System32\webcheck.dll
   307200 C:\Windows\System32\scansetting.dll
   307200 C:\Windows\System32\Windows.UI.Xaml.Resources.th.dll
   307200 C:\Windows\System32\eapputil.dll
   307200 C:\Windows\System32\scksp.dll
   307200 C:\Windows\System32\Windows.System.SystemManagement.dll
   307200 C:\Windows\System32\cleanmgr.exe
   307200 C:\Windows\System32\cewmdm.dll
   307200 C:\Windows\System32\PlayToReceiver.dll
   304552 C:\Windows\System32\webthreatdefusersvc.dll
   304536 C:\Windows\System32\SettingsHandlers_SIUF.dll
   304512 C:\Windows\System32\browserbroker.dll
   303112 C:\Windows\System32\SettingsHandlers_Troubleshoot.dll
   303104 C:\Windows\System32\difxapi.dll
   303104 C:\Windows\System32\srm.dll
   303104 C:\Windows\System32\polstore.dll
   303104 C:\Windows\System32\tcpipcfg.dll
   303104 C:\Windows\System32\activeds.dll
   303104 C:\Windows\System32\rdpviewerax.dll
   303104 C:\Windows\System32\psmsrv.dll
   303104 C:\Windows\System32\accountaccessor.dll
   303104 C:\Windows\System32\container.dll
   303088 C:\Windows\System32\Windows.StateRepositoryClient.dll
   303072 C:\Windows\System32\bootsvc.dll
   300448 C:\Windows\System32\mpg2splt.ax
   300416 C:\Windows\System32\MTF.dll
   299008 C:\Windows\System32\comsnap.dll
   299008 C:\Windows\System32\netman.dll
   299008 C:\Windows\System32\WpcTok.exe
   299008 C:\Windows\System32\AppExtension.dll
   299008 C:\Windows\System32\dxtrans.dll
   299008 C:\Windows\System32\HttpsDataSource.dll
   299008 C:\Windows\System32\wevtutil.exe
   299008 C:\Windows\System32\sdbinst.exe
   299008 C:\Windows\System32\jpnranker.dll
   299008 C:\Windows\System32\shsvcs.dll
   298976 C:\Windows\System32\wmpeffects.dll
   298952 C:\Windows\System32\deviceaccess.dll
   298952 C:\Windows\System32\logoncli.dll
   296336 C:\Windows\System32\wermgr.exe
   294912 C:\Windows\System32\sti_ci.dll
   294912 C:\Windows\System32\PkgMgr.exe
   294912 C:\Windows\System32\onex.dll
   294912 C:\Windows\System32\nduprov.dll
   294912 C:\Windows\System32\ShellConfigTask.dll
   294912 C:\Windows\System32\spp.dll
   294848 C:\Windows\System32\EditionUpgradeManagerObj.dll
   292864 C:\Windows\System32\SettingsHandlers_Backup.dll
   290816 C:\Windows\System32\cflapi.dll
   290816 C:\Windows\System32\wcmcsp.dll
   290816 C:\Windows\System32\feclient.dll
   290816 C:\Windows\System32\SettingsHandlers_SharedExperiences_Rome.dll
   290816 C:\Windows\System32\ExSMime.dll
   290816 C:\Windows\System32\TabSvc.dll
   290816 C:\Windows\System32\dmdskmgr.dll
   290816 C:\Windows\System32\MFDshowReverseBridge.dll
   290816 C:\Windows\System32\vdsbas.dll
   290816 C:\Windows\System32\IndexedDbLegacy.dll
   290816 C:\Windows\System32\ComposerFramework.dll
   290816 C:\Windows\System32\gpresult.exe
   290816 C:\Windows\System32\charmap.exe
   290816 C:\Windows\System32\icm32.dll
   290720 C:\Windows\System32\SensorsNativeApi.V2.dll
   288256 C:\Windows\System32\Microsoft.Uev.ManagedEventLogging.dll
   288128 C:\Windows\System32\AppxApplicabilityEngine.dll
   288128 C:\Windows\System32\nlhtml.dll
   288128 C:\Windows\System32\SFAPM.dll
   286720 C:\Windows\System32\xwtpdui.dll
   286720 C:\Windows\System32\DAFESCL.dll
   286720 C:\Windows\System32\rastapi.dll
   286720 C:\Windows\System32\dafpos.dll
   286720 C:\Windows\System32\manage-bde.exe
   286720 C:\Windows\System32\CourtesyEngine.dll
   286720 C:\Windows\System32\msIso.dll
   286720 C:\Windows\System32\ie4uinit.exe
   286720 C:\Windows\System32\ComposableShellProxyStub.dll
   286720 C:\Windows\System32\tetheringservice.dll
   286568 C:\Windows\System32\ProximityUxHost.exe
   286560 C:\Windows\System32\bdeunlock.exe
   286560 C:\Windows\System32\wscapi.dll
   286544 C:\Windows\System32\LanguageOverlayUtil.dll
   286544 C:\Windows\System32\HNetCfgClient.dll
   284064 C:\Windows\System32\kd_02_14e4.dll
   284048 C:\Windows\System32\vmfirmwarepcat.dll
   284032 C:\Windows\System32\fsutil.exe
   283976 C:\Windows\System32\wdscore.dll
   282624 C:\Windows\System32\Windows.UI.XamlHost.dll
   282624 C:\Windows\System32\fwbase.dll
   282624 C:\Windows\System32\GraphicsPerfSvc.dll
   282624 C:\Windows\System32\bcdboot.exe
   282624 C:\Windows\System32\adsldpc.dll
   282624 C:\Windows\System32\wpd_ci.dll
   282624 C:\Windows\System32\McpManagementService.dll
   282624 C:\Windows\System32\shutdownux.dll
   282624 C:\Windows\System32\pnputil.exe
   282624 C:\Windows\System32\msclmd.dll
   282624 C:\Windows\System32\cemapi.dll
   282624 C:\Windows\System32\wdmaud.drv
   282624 C:\Windows\System32\TDLMigration.dll
   282624 C:\Windows\System32\provthrd.dll
   282624 C:\Windows\System32\msls31.dll
   282432 C:\Windows\System32\xmllite.dll
   279856 C:\Windows\System32\vmsynthfcvdev.dll
   278640 C:\Windows\System32\msvcp140_2.dll
   278528 C:\Windows\System32\PresentationHost.exe
   278528 C:\Windows\System32\qdv.dll
   278528 C:\Windows\System32\devicengccredprov.dll
   278528 C:\Windows\System32\wavemsp.dll
   278528 C:\Windows\System32\SndVolSSO.dll
   278528 C:\Windows\System32\InkEd.dll
   278528 C:\Windows\System32\mlang.dll
   278528 C:\Windows\System32\ProvisioningHandlers.dll
   278528 C:\Windows\System32\BcastDVRCommon.dll
   278528 C:\Windows\System32\ngcpopkeysrv.dll
   278528 C:\Windows\System32\fhcat.dll
   277076 C:\Windows\System32\perfi009.dat
   274432 C:\Windows\System32\tapi32.dll
   274432 C:\Windows\System32\w32tm.exe
   274432 C:\Windows\System32\sdiageng.dll
   274432 C:\Windows\System32\RstrtMgr.dll
   274432 C:\Windows\System32\coredpus.dll
   274432 C:\Windows\System32\powercfg.cpl
   274432 C:\Windows\System32\FirewallUX.dll
   274432 C:\Windows\System32\fwmdmcsp.dll
   274432 C:\Windows\System32\cmimageworker.exe
   274184 C:\Windows\System32\ncryptsslp.dll
   274168 C:\Windows\System32\DXCore.dll
   271800 C:\Windows\System32\containerdevicemanagement.dll
   271776 C:\Windows\System32\microsoft-windows-kernel-processor-power-events.dll
   271744 C:\Windows\System32\vmbusvdev.dll
   271744 C:\Windows\System32\CExecSvc.exe
   271680 C:\Windows\System32\AppVFileSystemMetadata.dll
   270336 C:\Windows\System32\Windows.Internal.CapturePicker.Desktop.dll
   270336 C:\Windows\System32\netplwiz.dll
   270336 C:\Windows\System32\bthprops.cpl
   270336 C:\Windows\System32\SecurityHealthSystray.exe
   270336 C:\Windows\System32\authui.dll
   270336 C:\Windows\System32\VideoHandlers.dll
   270336 C:\Windows\System32\SettingsHandlers_Clipboard.dll
   270336 C:\Windows\System32\iassam.dll
   270336 C:\Windows\System32\framedyn.dll
   270336 C:\Windows\System32\CoreMas.dll
   270336 C:\Windows\System32\srmstormod.dll
   270336 C:\Windows\System32\WinSCard.dll
   270056 C:\Windows\System32\ntasn1.dll
   270032 C:\Windows\System32\WUDFPlatform.dll
   267720 C:\Windows\System32\DataExchangeHost.exe
   267704 C:\Windows\System32\ActionQueue.dll
   267672 C:\Windows\System32\SecurityHealthUdk.dll
   267664 C:\Windows\System32\RdpAvenc.dll
   267648 C:\Windows\System32\MSNP.ax
   266800 C:\Windows\System32\edit.exe
   266240 C:\Windows\System32\rdpinput.exe
   266240 C:\Windows\System32\SystemEventsBrokerServer.dll
   266240 C:\Windows\System32\scrobj.dll
   266240 C:\Windows\System32\ngcrecovery.dll
   266240 C:\Windows\System32\MSAC3ENC.DLL
   266240 C:\Windows\System32\SecureAssessmentHandlers.dll
   266240 C:\Windows\System32\miutils.dll
   266240 C:\Windows\System32\MpeCm.dll
   266240 C:\Windows\System32\vmdevicehost.dll
   266240 C:\Windows\System32\TetheringStation.dll
   266240 C:\Windows\System32\umpoext.dll
   266240 C:\Windows\System32\Windows.Management.Update.dll
   266240 C:\Windows\System32\dinput8.dll
   266240 C:\Windows\System32\DeviceCenter.dll
   265912 C:\Windows\System32\MP43DECD.DLL
   265912 C:\Windows\System32\MPG4DECD.DLL
   263600 C:\Windows\System32\moshostcore.dll
   263568 C:\Windows\System32\UnionFSApi.dll
   263552 C:\Windows\System32\vid.dll
   262144 C:\Windows\System32\ACPBackgroundManagerPolicy.dll
   262144 C:\Windows\System32\timedate.cpl
   262144 C:\Windows\System32\unregmp2.exe
   262144 C:\Windows\System32\apds.dll
   262144 C:\Windows\System32\KnobsCore.dll
   262144 C:\Windows\System32\TetheringMgr.dll
   262144 C:\Windows\System32\ContactHarvesterDS.dll
   262144 C:\Windows\System32\Windows.SharedPC.AccountManager.dll
   262144 C:\Windows\System32\PeerDistCleaner.dll
   262144 C:\Windows\System32\mfksproxy.dll
   262144 C:\Windows\System32\prnfldr.dll
   262144 C:\Windows\System32\DWWIN.EXE
   262144 C:\Windows\System32\Windows.Devices.HumanInterfaceDevice.dll
   262144 C:\Windows\System32\VoiceAccess.exe
   261792 C:\Windows\System32\KerbClientShared.dll
   261784 C:\Windows\System32\mfps.dll
   259496 C:\Windows\System32\consent.exe
   259456 C:\Windows\System32\basecsp.dll
   259456 C:\Windows\System32\ifsutil.dll
   258048 C:\Windows\System32\ngckeyenum.dll
   258048 C:\Windows\System32\UsbSettingsHandlers.dll
   258048 C:\Windows\System32\iasrad.dll
   258048 C:\Windows\System32\Windows.Security.Authentication.Identity.Provider.dll
   258048 C:\Windows\System32\SettingsHandlers_Startup.dll
   258048 C:\Windows\System32\RelPost.exe
   258048 C:\Windows\System32\mpeval.dll
   258048 C:\Windows\System32\FileHistory.exe
   258048 C:\Windows\System32\wsl.exe
   258048 C:\Windows\System32\prntvpt.dll
   258048 C:\Windows\System32\appmgmts.dll
   258048 C:\Windows\System32\ApproveChildRequest.exe
   258048 C:\Windows\System32\ModernPrintConfigHelper.dll
   258048 C:\Windows\System32\VPNv2CSP.dll
   258048 C:\Windows\System32\PresentationSettings.exe
   258048 C:\Windows\System32\regapi.dll
   258048 C:\Windows\System32\RemoteFileBrowse.dll
   257640 C:\Windows\System32\Windows.System.Profile.HardwareId.dll
   253952 C:\Windows\System32\msconfig.exe
   253952 C:\Windows\System32\schtasks.exe
   253952 C:\Windows\System32\vbsapi.dll
   253952 C:\Windows\System32\wincredui.dll
   253952 C:\Windows\System32\AppXApplicabilityBlob.dll
   253952 C:\Windows\System32\netiohlp.dll
   253952 C:\Windows\System32\PeopleBand.dll
   253952 C:\Windows\System32\GraphicsCapture.dll
   253952 C:\Windows\System32\LanguageComponentsInstaller.dll
   253952 C:\Windows\System32\WebClnt.dll
   253952 C:\Windows\System32\Microsoft.Uev.ConfigWrapper.dll
   253512 C:\Windows\System32\Windows.Storage.OneCore.dll
   253504 C:\Windows\System32\weretw.dll
   253504 C:\Windows\System32\cryptnet.dll
   252416 C:\Windows\System32\tzsync.exe
   251312 C:\Windows\System32\vmtpm.dll
   251272 C:\Windows\System32\SubAuthLoader.dll
   249856 C:\Windows\System32\CodeIntegrityAggregator.dll
   249856 C:\Windows\System32\tssrvlic.dll
   249856 C:\Windows\System32\WinSyncMetastore.dll
   249856 C:\Windows\System32\fhengine.dll
   249856 C:\Windows\System32\dskquoui.dll
   249856 C:\Windows\System32\Windows.UI.Xaml.Resources.win81.dll
   249856 C:\Windows\System32\MFWMAAEC.DLL
   249856 C:\Windows\System32\dialclient.dll
   249856 C:\Windows\System32\C_G18030.DLL
   249856 C:\Windows\System32\drvsetup.dll
   249856 C:\Windows\System32\pcaui.exe
   249856 C:\Windows\System32\ssText3d.scr
   249856 C:\Windows\System32\wmpdxm.dll
   249856 C:\Windows\System32\puiapi.dll
   249856 C:\Windows\System32\ManageCI.dll
   249856 C:\Windows\System32\setupugc.exe
   249856 C:\Windows\System32\hnsdiag.exe
   249856 C:\Windows\System32\ddpchunk.dll
   249856 C:\Windows\System32\BluetoothApis.dll
   249856 C:\Windows\System32\WpdMtp.dll
   249384 C:\Windows\System32\EditionUpgradeHelper.dll
   249384 C:\Windows\System32\rsaenh.dll
   249360 C:\Windows\System32\COLORCNV.DLL
   249360 C:\Windows\System32\coreglobconfig.dll
   247200 C:\Windows\System32\vmicrdv.dll
   247168 C:\Windows\System32\ManagedWindowsVM.exe
   245760 C:\Windows\System32\intl.cpl
   245760 C:\Windows\System32\XamlTileRender.dll
   245760 C:\Windows\System32\NetworkDesktopSettings.dll
   245760 C:\Windows\System32\tspubwmi.dll
   245760 C:\Windows\System32\RMapi.dll
   245760 C:\Windows\System32\PhoneCallHistoryApis.dll
   245760 C:\Windows\System32\werui.dll
   245760 C:\Windows\System32\PeerDist.dll
   245760 C:\Windows\System32\SettingsHandlers_ClosedCaptioning.dll
   245760 C:\Windows\System32\dbgcore.dll
   245760 C:\Windows\System32\ngctasks.dll
   245760 C:\Windows\System32\mskeyprotcli.dll
   245760 C:\Windows\System32\dhcpsapi.dll
   245760 C:\Windows\System32\mssph.dll
   245760 C:\Windows\System32\JpnServiceDS.dll
   245264 C:\Windows\System32\RTWorkQ.dll
   245224 C:\Windows\System32\omadmapi.dll
   243815 C:\Windows\System32\@facial-recognition-windows-hello.gif
   243128 C:\Windows\System32\vpcievdev.dll
   241664 C:\Windows\System32\srrstr.dll
   241664 C:\Windows\System32\els.dll
   241664 C:\Windows\System32\netcenter.dll
   241664 C:\Windows\System32\BootMenuUX.dll
   241664 C:\Windows\System32\winbio.dll
   241664 C:\Windows\System32\wiadefui.dll
   241664 C:\Windows\System32\bitsadmin.exe
   241664 C:\Windows\System32\wusa.exe
   241664 C:\Windows\System32\VoipRT.dll
   241664 C:\Windows\System32\EapTeapAuth.dll
   241664 C:\Windows\System32\Defrag.exe
   241136 C:\Windows\System32\Clipc.dll
   239032 C:\Windows\System32\AppVStreamMap.dll
   238992 C:\Windows\System32\convertvhd.exe
   237568 C:\Windows\System32\inetpp.dll
   237568 C:\Windows\System32\wmvdspa.dll
   237568 C:\Windows\System32\MapControlCore.dll
   237568 C:\Windows\System32\desk.cpl
   237568 C:\Windows\System32\ocsetapi.dll
   237568 C:\Windows\System32\wwancfg.dll
   237568 C:\Windows\System32\fms.dll
   237568 C:\Windows\System32\Windows.Networking.HostName.dll
   237568 C:\Windows\System32\rdsdwmdr.dll
   237568 C:\Windows\System32\PersonalizationCSP.dll
   237568 C:\Windows\System32\itss.dll
   237568 C:\Windows\System32\sendmail.dll
   237568 C:\Windows\System32\TimeBrokerServer.dll
   237568 C:\Windows\System32\credprovslegacy.dll
   237568 C:\Windows\System32\MSAMRNBEncoder.dll
   237568 C:\Windows\System32\raschap.dll
   237040 C:\Windows\System32\SecurityCenterBroker.dll
   235392 C:\Windows\System32\wuapi.dll
   234928 C:\Windows\System32\AppVShNotify.exe
   234912 C:\Windows\System32\cmifw.dll
   234904 C:\Windows\System32\IsolatedWindowsEnvironmentUtils.dll
   234904 C:\Windows\System32\aadWamExtension.dll
   233472 C:\Windows\System32\ptpprov.dll
   233472 C:\Windows\System32\AppvClientEventLog.dll
   233472 C:\Windows\System32\appvetwsharedperformance.dll
   233472 C:\Windows\System32\Microsoft-Windows-Internal-Shell-NearShareExperience.dll
   233472 C:\Windows\System32\Apx01000.dll
   233472 C:\Windows\System32\AccountHealth.dll
   233472 C:\Windows\System32\sharemediacpl.dll
   233472 C:\Windows\System32\CloudExperienceHostRedirection.dll
   233472 C:\Windows\System32\dialserver.dll
   233472 C:\Windows\System32\dwmredir.dll
   233472 C:\Windows\System32\Windows.Internal.System.UserProfile.dll
   233472 C:\Windows\System32\WorkFoldersShell.dll
   233472 C:\Windows\System32\odbcint.dll
   233472 C:\Windows\System32\oledlg.dll
   233472 C:\Windows\System32\certprop.dll
   233472 C:\Windows\System32\wscinterop.dll
   233472 C:\Windows\System32\UserDeviceRegistration.dll
   233472 C:\Windows\System32\scrrun.dll
   232888 C:\Windows\System32\WerFaultSecure.exe
   232848 C:\Windows\System32\WUDFCompanionHost.exe
   232840 C:\Windows\System32\rmclient.dll
   232832 C:\Windows\System32\SystemSettingsBroker.exe
   232824 C:\Windows\System32\winbrand.dll
   230808 C:\Windows\System32\hvloader.dll
   229376 C:\Windows\System32\NmaDirect.dll
   229376 C:\Windows\System32\cabview.dll
   229376 C:\Windows\System32\bindfltapi.dll
   229376 C:\Windows\System32\umpo.dll
   229376 C:\Windows\System32\cryptcatsvc.dll
   229376 C:\Windows\System32\NPSM.dll
   229376 C:\Windows\System32\EhStorShell.dll
   229376 C:\Windows\System32\SettingsHandlers_InstalledUpdates.dll
   229376 C:\Windows\System32\FilterDS.dll
   229376 C:\Windows\System32\SpaceAgent.exe
   229376 C:\Windows\System32\DiagSvc.dll
   229376 C:\Windows\System32\rasman.dll
   229376 C:\Windows\System32\ResetEngOnline.dll
   229376 C:\Windows\System32\CaptureService.dll
   229376 C:\Windows\System32\twext.dll
   228736 C:\Windows\System32\CompPkgSup.dll
   228728 C:\Windows\System32\smss.exe
   228720 C:\Windows\System32\winmmbase.dll
   227744 C:\Windows\System32\hpbuiofax64.dll
   226688 C:\Windows\System32\vmickrnl.dll
   225280 C:\Windows\System32\ClipboardServer.dll
   225280 C:\Windows\System32\softkbd.dll
   225280 C:\Windows\System32\LegacyNetUXHost.exe
   225280 C:\Windows\System32\AuthBroker.dll
   225280 C:\Windows\System32\qcap.dll
   225280 C:\Windows\System32\dafupnp.dll
   225280 C:\Windows\System32\tzautoupdate.dll
   225280 C:\Windows\System32\AppxSysprep.dll
   225280 C:\Windows\System32\Family.SyncEngine.dll
   225280 C:\Windows\System32\cic.dll
   225280 C:\Windows\System32\DeviceSoftwareInstallationClient.dll
   225280 C:\Windows\System32\dmcsps.dll
   225280 C:\Windows\System32\PasswordEnrollmentManager.dll
   225280 C:\Windows\System32\VsGraphicsCapture.dll
   225280 C:\Windows\System32\LockScreenContent.dll
   225280 C:\Windows\System32\wlandlg.dll
   225280 C:\Windows\System32\Windows.Devices.Radios.dll
   224584 C:\Windows\System32\ntmarta.dll
   224576 C:\Windows\System32\IPHLPAPI.DLL
   224560 C:\Windows\System32\BCP47mrm.dll
   223200 C:\Windows\System32\rometadata.dll
   222592 C:\Windows\System32\mavinject.exe
   221424 C:\Windows\System32\vrfcore.dll
   221312 C:\Windows\System32\vcomp140d.dll
   221184 C:\Windows\System32\Microsoft-Windows-AppModelExecEvents.dll
   221184 C:\Windows\System32\wecsvc.dll
   221184 C:\Windows\System32\autopilot.dll
   221184 C:\Windows\System32\itircl.dll
   221184 C:\Windows\System32\SettingsConfigTask.dll
   221184 C:\Windows\System32\sensrsvc.dll
   221184 C:\Windows\System32\NotificationIntelligencePlatform.dll
   221184 C:\Windows\System32\lsaadt.dll
   221184 C:\Windows\System32\SystemSettings.DeviceEncryptionHandlers.dll
   221184 C:\Windows\System32\appsruprov.dll
   221184 C:\Windows\System32\PimIndexMaintenance.dll
   220448 C:\Windows\System32\winmm.dll
   220448 C:\Windows\System32\CredentialUIBroker.exe
   218496 C:\Windows\System32\KeyboardFilterSvc.dll
   217656 C:\Windows\System32\hppscancoins64.dll
   217088 C:\Windows\System32\BrokerLib.dll
   217088 C:\Windows\System32\CloudDesktopCSP.dll
   217088 C:\Windows\System32\MTFFuzzyDS.dll
   217088 C:\Windows\System32\Windows.Web.Diagnostics.dll
   217088 C:\Windows\System32\rpchttp.dll
   217088 C:\Windows\System32\DXToolsMonitor.dll
   217088 C:\Windows\System32\Windows.ApplicationModel.Core.dll
   217088 C:\Windows\System32\MdmCommon.dll
   217088 C:\Windows\System32\fdprint.dll
   217088 C:\Windows\System32\BthpanContextHandler.dll
   217088 C:\Windows\System32\IHDS.dll
   217088 C:\Windows\System32\SettingsHandlers_ContentDeliveryManager.dll
   217088 C:\Windows\System32\ConsentExperienceCommon.dll
   217088 C:\Windows\System32\XpsToPclmConverter.dll
   217088 C:\Windows\System32\fvenotify.exe
   217088 C:\Windows\System32\MCCSEngineShared.dll
   217088 C:\Windows\System32\Windows.Devices.Scanners.dll
   217088 C:\Windows\System32\bcastdvr.proxy.dll
   217088 C:\Windows\System32\recdisc.exe
   217088 C:\Windows\System32\PortableDeviceSyncProvider.dll
   217088 C:\Windows\System32\EsclWiaDriver.dll
   217088 C:\Windows\System32\whesvc.dll
   217088 C:\Windows\System32\hgcpl.dll
   217088 C:\Windows\System32\SettingsHandlers_InkingTypingPrivacy.dll
   216480 C:\Windows\System32\TransferTargets.dll
   216344 C:\Windows\System32\vertdll.dll
   215943 C:\Windows\System32\dssec.dat
   214440 C:\Windows\System32\verifier.exe
   214432 C:\Windows\System32\Windows.Management.Workplace.dll
   214432 C:\Windows\System32\HyperVSysprepProvider.dll
   214016 C:\Windows\System32\Microsoft.Uev.CmUtil.dll
   212992 C:\Windows\System32\l3codecp.acm
   212992 C:\Windows\System32\NgcProCsp.dll
   212992 C:\Windows\System32\modemui.dll
   212992 C:\Windows\System32\dsquery.dll
   212992 C:\Windows\System32\EsclProtocol.dll
   212992 C:\Windows\System32\VirtualMon.dll
   212992 C:\Windows\System32\whesvc_assets.dll
   212992 C:\Windows\System32\SettingsHandlers_Copilot.dll
   212992 C:\Windows\System32\netjoin.dll
   212992 C:\Windows\System32\fundisc.dll
   212992 C:\Windows\System32\Windows.Internal.UI.Logon.ProxyStub.dll
   212992 C:\Windows\System32\wmidcom.dll
   212992 C:\Windows\System32\sdrsvc.dll
   212992 C:\Windows\System32\alg.exe
   212992 C:\Windows\System32\WinRtTracing.dll
   212992 C:\Windows\System32\Winlangdb.dll
   212411 C:\Windows\System32\@facial-recognition-windows-hello-rejuv.gif
   212184 C:\Windows\System32\gpapi.dll
   212184 C:\Windows\System32\imm32.dll
   212168 C:\Windows\System32\wwapi.dll
   211938 C:\Windows\System32\lcphrase.tbl
   210376 C:\Windows\System32\AppVStreamingUX.dll
   210320 C:\Windows\System32\NetSetupApi.dll
   208896 C:\Windows\System32\wmidx.dll
   208896 C:\Windows\System32\TtlsCfg.dll
   208896 C:\Windows\System32\IoTAssignedAccessLockFramework.dll
   208896 C:\Windows\System32\VCardParser.dll
   208896 C:\Windows\System32\dafAspInfraProvider.dll
   208896 C:\Windows\System32\regsvc.dll
   208896 C:\Windows\System32\wmitomi.dll
   208896 C:\Windows\System32\msdtc.exe
   208896 C:\Windows\System32\PortableDeviceTypes.dll
   208896 C:\Windows\System32\SimAuth.dll
   208896 C:\Windows\System32\d3d10_1.dll
   208896 C:\Windows\System32\dsprop.dll
   208896 C:\Windows\System32\msctfp.dll
   208896 C:\Windows\System32\LampArray.dll
   208896 C:\Windows\System32\globinputhost.dll
   208896 C:\Windows\System32\rtm.dll
   208896 C:\Windows\System32\WirelessNetworkPreferenceCSP.dll
   208896 C:\Windows\System32\sbeio.dll
   208064 C:\Windows\System32\ncrypt.dll
   208048 C:\Windows\System32\profext.dll
   208040 C:\Windows\System32\SensorsUtilsV2.dll
   206208 C:\Windows\System32\VBICodec.ax
   204800 C:\Windows\System32\AdvancedEmojiDS.dll
   204800 C:\Windows\System32\Robocopy.exe
   204800 C:\Windows\System32\easwrt.dll
   204800 C:\Windows\System32\dmusic.dll
   204800 C:\Windows\System32\t2embed.dll
   204800 C:\Windows\System32\ScDeviceEnum.dll
   204800 C:\Windows\System32\mmcbase.dll
   204800 C:\Windows\System32\dmcertinst.exe
   204800 C:\Windows\System32\cxcredprov.dll
   204800 C:\Windows\System32\CertPolEng.dll
   204800 C:\Windows\System32\Windows.Internal.Taskbar.dll
   204800 C:\Windows\System32\trie.dll
   204800 C:\Windows\System32\usoapi.dll
   204800 C:\Windows\System32\powercpl.dll
   204800 C:\Windows\System32\miguiresource.dll
   204800 C:\Windows\System32\FwRemoteSvr.dll
   204800 C:\Windows\System32\dinput.dll
   204800 C:\Windows\System32\uwfcfgmgmt.dll
   204800 C:\Windows\System32\gamingtcui.dll
   204800 C:\Windows\System32\verifiergui.exe
   204072 C:\Windows\System32\winrm.vbs
   203952 C:\Windows\System32\CorePrivacySettingsStore.dll
   203112 C:\Windows\System32\CompatTelRunner.exe
   202160 C:\Windows\System32\vmdebug.dll
   200704 C:\Windows\System32\wscript.exe
   200704 C:\Windows\System32\dasHost.exe
   200704 C:\Windows\System32\uudf.dll
   200704 C:\Windows\System32\SettingsHandlers_Touch.dll
   200704 C:\Windows\System32\dispdiag.exe
   200704 C:\Windows\System32\DataStoreCacheDumpTool.exe
   200704 C:\Windows\System32\ErrorDetails.dll
   200704 C:\Windows\System32\PortableDeviceWiaCompat.dll
   200704 C:\Windows\System32\Docking.VirtualInput.dll
   200704 C:\Windows\System32\autoplay.dll
   200704 C:\Windows\System32\dssvc.dll
   200704 C:\Windows\System32\SettingsHandlers_UserIntent.dll
   200704 C:\Windows\System32\console.dll
   200704 C:\Windows\System32\pcadm.dll
   200704 C:\Windows\System32\mdmmigrator.dll
   200704 C:\Windows\System32\XblGameSaveExt.dll
   200704 C:\Windows\System32\DevPropMgr.dll
   200704 C:\Windows\System32\PeerDistWSDDiscoProv.dll
   200704 C:\Windows\System32\Windows.System.Profile.RetailInfo.dll
   200704 C:\Windows\System32\SettingsHandlers_AppExecutionAlias.dll
   200704 C:\Windows\System32\nlmgp.dll
   200704 C:\Windows\System32\MemoryDiagnostic.dll
   199776 C:\Windows\System32\dxva2.dll
   199776 C:\Windows\System32\DevDispItemProvider.dll
   198016 C:\Windows\System32\ulib.dll
   196642 C:\Windows\System32\C_936.NLS
   196642 C:\Windows\System32\C_950.NLS
   196642 C:\Windows\System32\C_949.NLS
   196608 C:\Windows\System32\mapi32.dll
   196608 C:\Windows\System32\iexpress.exe
   196608 C:\Windows\System32\MediaFoundation.DefaultPerceptionProvider.dll
   196608 C:\Windows\System32\OneSettingsClient.dll
   196608 C:\Windows\System32\oleprn.dll
   196608 C:\Windows\System32\stordiag.exe
   196608 C:\Windows\System32\NPSMDesktopProvider.dll
   196608 C:\Windows\System32\sppwmi.dll
   196608 C:\Windows\System32\rgb9rast.dll
   196608 C:\Windows\System32\OmaDmAgent.dll
   196608 C:\Windows\System32\WsmAuto.dll
   196608 C:\Windows\System32\SpatialAudioLicenseSrv.exe
   196608 C:\Windows\System32\DscCoreConfProv.dll
   196608 C:\Windows\System32\mapistub.dll
   196608 C:\Windows\System32\MDMAppInstaller.exe
   196608 C:\Windows\System32\sud.dll
   196608 C:\Windows\System32\srpapi.dll
   196608 C:\Windows\System32\WPTaskScheduler.dll
   196608 C:\Windows\System32\BitLockerDeviceEncryption.exe
   196608 C:\Windows\System32\Windows.Storage.Compression.dll
   196608 C:\Windows\System32\mssprxy.dll
   196608 C:\Windows\System32\mtxoci.dll
   196608 C:\Windows\System32\ApiSetHost.AppExecutionAlias.dll
   196608 C:\Windows\System32\fsquirt.exe
   196608 C:\Windows\System32\umpnpmgr.dll
   196608 C:\Windows\System32\sdiagprv.dll
   196256 C:\Windows\System32\vcomp140.dll
   195720 C:\Windows\System32\vcruntime140d.dll
   195712 C:\Windows\System32\slc.dll
   195688 C:\Windows\System32\upfc.exe
   195618 C:\Windows\System32\C_10002.NLS
   195560 C:\Windows\System32\devobj.dll
   193992 C:\Windows\System32\SecurityHealthProxyStub.dll
   193936 C:\Windows\System32\windowsdefenderapplicationguardcsp.dll
   193920 C:\Windows\System32\mssecwfpu.dll
   193920 C:\Windows\System32\AppVDllSurrogate.exe
   193920 C:\Windows\System32\Query.dll
   193920 C:\Windows\System32\webthreatdefsvc.dll
   192512 C:\Windows\System32\wiadss.dll
   192512 C:\Windows\System32\MissionControlAggregator.dll
   192512 C:\Windows\System32\MSOpusDecoder.dll
   192512 C:\Windows\System32\profsvcext.dll
   192512 C:\Windows\System32\LicensingCSP.dll
   192512 C:\Windows\System32\DXToolsReporting.dll
   192512 C:\Windows\System32\wlgpclnt.dll
   192512 C:\Windows\System32\cscript.exe
   192512 C:\Windows\System32\StringFeedbackEngine.dll
   192512 C:\Windows\System32\netid.dll
   192512 C:\Windows\System32\powercfg.exe
   192512 C:\Windows\System32\auditcse.dll
   192512 C:\Windows\System32\dps.dll
   192512 C:\Windows\System32\NcaSvc.dll
   192512 C:\Windows\System32\Windows.Media.Streaming.ps.dll
   191576 C:\Windows\System32\vmsp.exe
   191512 C:\Windows\System32\dwmapi.dll
   191512 C:\Windows\System32\Windows.Graphics.Display.BrightnessOverride.dll
   190848 C:\Windows\System32\secfw_AuthenticAMD.dll
   189986 C:\Windows\System32\C_1361.NLS
   189856 C:\Windows\System32\hvsievaluator.exe
   188416 C:\Windows\System32\TtlsExt.dll
   188416 C:\Windows\System32\UvcModel.dll
   188416 C:\Windows\System32\uwfcsp.dll
   188416 C:\Windows\System32\occache.dll
   188416 C:\Windows\System32\edpcsp.dll
   188416 C:\Windows\System32\UCPDMgr.exe
   188416 C:\Windows\System32\Midi2.VirtualMidiTransport.dll
   188416 C:\Windows\System32\deviceregistration.dll
   188416 C:\Windows\System32\cldapi.dll
   188416 C:\Windows\System32\fveprompt.exe
   188416 C:\Windows\System32\LiveCaptions.exe
   188416 C:\Windows\System32\Windows.Internal.Graphics.Display.DisplayEnhancementManagement.dll
   188416 C:\Windows\System32\SettingsHandlers_BackgroundApps.dll
   188416 C:\Windows\System32\EapTeapConfig.dll
   188416 C:\Windows\System32\sstpsvc.dll
   188416 C:\Windows\System32\eapsimextdesktop.dll
   188416 C:\Windows\System32\DeviceElementSource.dll
   188416 C:\Windows\System32\fdWSD.dll
   188416 C:\Windows\System32\useractivitybroker.dll
   188416 C:\Windows\System32\wcmapi.dll
   188416 C:\Windows\System32\eUICCsCSP.dll
   188416 C:\Windows\System32\playtomenu.dll
   188416 C:\Windows\System32\ActivationClient.dll
   188416 C:\Windows\System32\Tabbtn.dll
   187938 C:\Windows\System32\C_20005.NLS
   187416 C:\Windows\System32\dssenh.dll
   187400 C:\Windows\System32\userenv.dll
   187376 C:\Windows\System32\gdi32.dll
   186402 C:\Windows\System32\C_20001.NLS
   185784 C:\Windows\System32\uxlib.dll
   185664 C:\Windows\System32\AppVNice.exe
   185378 C:\Windows\System32\C_20003.NLS
   184704 C:\Windows\System32\wuaueng.dll
   184320 C:\Windows\System32\SwitcherDataModel.dll
   184320 C:\Windows\System32\shsetup.dll
   184320 C:\Windows\System32\CallHistoryClient.dll
   184320 C:\Windows\System32\srmshell.dll
   184320 C:\Windows\System32\msdtclog.dll
   184320 C:\Windows\System32\net1.exe
   184320 C:\Windows\System32\SharedPCCSP.dll
   184320 C:\Windows\System32\Themes.SsfDownload.ScheduledTask.dll
   184320 C:\Windows\System32\fde.dll
   184320 C:\Windows\System32\dmvdsitf.dll
   184320 C:\Windows\System32\RjvMDMConfig.dll
   184320 C:\Windows\System32\fdeploy.dll
   184320 C:\Windows\System32\msdadiag.dll
   184320 C:\Windows\System32\Display.dll
   184320 C:\Windows\System32\joinutil.dll
   184320 C:\Windows\System32\PrintDeviceConfigurationService.dll
   184320 C:\Windows\System32\WpdMtpUS.dll
   184320 C:\Windows\System32\ProximityCommon.dll
   184320 C:\Windows\System32\WaaSAssessment.dll
   184320 C:\Windows\System32\iscsiexe.dll
   184320 C:\Windows\System32\MtcModel.dll
   184320 C:\Windows\System32\efsadu.dll
   183272 C:\Windows\System32\kerb3961.dll
   183264 C:\Windows\System32\bcrypt.dll
   183240 C:\Windows\System32\wtsapi32.dll
   181688 C:\Windows\System32\microsoft-windows-sleepstudy-events.dll
   181680 C:\Windows\System32\ResourcePolicyServer.dll
   180770 C:\Windows\System32\C_20932.NLS
   180258 C:\Windows\System32\C_20000.NLS
   180258 C:\Windows\System32\C_20004.NLS
   180224 C:\Windows\System32\msrdc.dll
   180224 C:\Windows\System32\embeddedmodesvc.dll
   180224 C:\Windows\System32\BthTelemetry.dll
   180224 C:\Windows\System32\iasrecst.dll
   180224 C:\Windows\System32\SettingsHandlers_Mouse.dll
   180224 C:\Windows\System32\negoexts.dll
   180224 C:\Windows\System32\glu32.dll
   180224 C:\Windows\System32\advpack.dll
   180224 C:\Windows\System32\dot3api.dll
   180224 C:\Windows\System32\wini3c.dll
   180224 C:\Windows\System32\perfmon.exe
   180224 C:\Windows\System32\provpackageapidll.dll
   180224 C:\Windows\System32\pcwutl.dll
   180224 C:\Windows\System32\TSpkg.dll
   180224 C:\Windows\System32\CredProvHelper.dll
   180224 C:\Windows\System32\IDStore.dll
   180224 C:\Windows\System32\mstask.dll
   180224 C:\Windows\System32\dafDockingProvider.dll
   180224 C:\Windows\System32\IEAdvpack.dll
   180224 C:\Windows\System32\msaatext.dll
   180224 C:\Windows\System32\msiexec.exe
   180224 C:\Windows\System32\TelephonyInteractiveUser.dll
   180224 C:\Windows\System32\qasf.dll
   179184 C:\Windows\System32\Windows.Internal.ShellCommon.Broker.dll
   179128 C:\Windows\System32\profapi.dll
   177698 C:\Windows\System32\C_10003.NLS
   177698 C:\Windows\System32\C_20949.NLS
   177536 C:\Windows\System32\HvsiSettingsWorker.exe
   177536 C:\Windows\System32\setupcl.dll
   176128 C:\Windows\System32\MDMAgent.exe
   176128 C:\Windows\System32\LicenseManagerSvc.dll
   176128 C:\Windows\System32\odbctrac.dll
   176128 C:\Windows\System32\ntdsapi.dll
   176128 C:\Windows\System32\SensorsClassExtension.dll
   176128 C:\Windows\System32\WcnApi.dll
   176128 C:\Windows\System32\Mystify.scr
   176128 C:\Windows\System32\msctfui.dll
   176128 C:\Windows\System32\dggpext.dll
   176128 C:\Windows\System32\AppointmentActivation.dll
   176128 C:\Windows\System32\Dsui.dll
   176128 C:\Windows\System32\vdsutil.dll
   176128 C:\Windows\System32\samlib.dll
   176128 C:\Windows\System32\eapsvc.dll
   176128 C:\Windows\System32\efsutil.dll
   176128 C:\Windows\System32\msdart.dll
   176128 C:\Windows\System32\prncache.dll
   176128 C:\Windows\System32\iassvcs.dll
   176128 C:\Windows\System32\diskpart.exe
   176128 C:\Windows\System32\mimofcodec.dll
   176128 C:\Windows\System32\DeviceUpdateAgent.dll
   176128 C:\Windows\System32\EoAExperiences.exe
   176128 C:\Windows\System32\directxdatabaseupdater.exe
   176128 C:\Windows\System32\VocabRoamingHandler.dll
   176128 C:\Windows\System32\SettingsHandlers_ForceSync.dll
   176128 C:\Windows\System32\Ribbons.scr
   176128 C:\Windows\System32\Family.Cache.dll
   176128 C:\Windows\System32\UtcDecoderHost.exe
   175050 C:\Windows\System32\license.rtf
   175024 C:\Windows\System32\cabinet.dll
   175016 C:\Windows\System32\cryptxml.dll
   174992 C:\Windows\System32\OpenWith.exe
   174976 C:\Windows\System32\PickerHost.exe
   174904 C:\Windows\System32\LicensingUI.exe
   173602 C:\Windows\System32\C_20002.NLS
   173602 C:\Windows\System32\C_10008.NLS
   173602 C:\Windows\System32\C_20936.NLS
   173496 C:\Windows\System32\hvc.exe
   173456 C:\Windows\System32\SystemSettings.SettingsExtensibility.dll
   173456 C:\Windows\System32\rdplite.dll
   173440 C:\Windows\System32\icfupgd.dll
   172032 C:\Windows\System32\AxInstSv.dll
   172032 C:\Windows\System32\sysdm.cpl
   172032 C:\Windows\System32\dmclient.exe
   172032 C:\Windows\System32\sethc.exe
   172032 C:\Windows\System32\dafWCN.dll
   172032 C:\Windows\System32\msrahc.dll
   172032 C:\Windows\System32\msvfw32.dll
   172032 C:\Windows\System32\mfdvdec.dll
   172032 C:\Windows\System32\CredDialogBroker.dll
   172032 C:\Windows\System32\omadmprc.exe
   172032 C:\Windows\System32\racpldlg.dll
   172032 C:\Windows\System32\rtffilt.dll
   172032 C:\Windows\System32\AppManagementConfiguration.dll
   172032 C:\Windows\System32\dmwmicsp.dll
   172032 C:\Windows\System32\dmxmlhelputils.dll
   172032 C:\Windows\System32\fltmgrres.dll
   172032 C:\Windows\System32\Windows.Devices.Haptics.dll
   172032 C:\Windows\System32\wextract.exe
   170872 C:\Windows\System32\win32u.dll
   169400 C:\Windows\System32\iotstartup.exe
   169384 C:\Windows\System32\dnscmmc.dll
   169384 C:\Windows\System32\CscMig.dll
   169376 C:\Windows\System32\ThreatResponseEngine.dll
   169344 C:\Windows\System32\vmvirtio.dll
   167936 C:\Windows\System32\IdCtrls.dll
   167936 C:\Windows\System32\edputil.dll
   167936 C:\Windows\System32\colorui.dll
   167936 C:\Windows\System32\hgclientservice.dll
   167936 C:\Windows\System32\SettingsExtensibilityHandlers.dll
   167936 C:\Windows\System32\Windows.Internal.CapturePicker.dll
   167936 C:\Windows\System32\EDPCleanup.exe
   167936 C:\Windows\System32\eShims.dll
   167936 C:\Windows\System32\InputInjectionBroker.dll
   167936 C:\Windows\System32\xwtpw32.dll
   167936 C:\Windows\System32\shacct.dll
   167936 C:\Windows\System32\fhshl.dll
   167936 C:\Windows\System32\ReportingCSP.dll
   167936 C:\Windows\System32\acppage.dll
   167936 C:\Windows\System32\vssadmin.exe
   167936 C:\Windows\System32\mmgaproxystub.dll
   167936 C:\Windows\System32\Windows.Devices.SerialCommunication.dll
   167936 C:\Windows\System32\setupcln.dll
   167640 C:\Windows\System32\chs_singlechar_pinyin.dat
   166912 C:\Windows\System32\Chakradiag.dll
   166760 C:\Windows\System32\MptfGenericService.exe
   166360 C:\Windows\System32\SettingsHandlers_CloudPC.dll
   166256 C:\Windows\System32\appverifUI.dll
   165320 C:\Windows\System32\Kswdmcap.ax
   165288 C:\Windows\System32\SystemSettingsProxyClientDVCPlugin.dll
   165248 C:\Windows\System32\SSShim.dll
   163840 C:\Windows\System32\wpdbusenum.dll
   163840 C:\Windows\System32\WinHvEmulation.dll
   163840 C:\Windows\System32\SettingsHandlers_Geolocation.dll
   163840 C:\Windows\System32\fingerprintcredential.dll
   163840 C:\Windows\System32\Windows.Security.Credentials.UI.UserConsentVerifier.dll
   163840 C:\Windows\System32\DnsClientCSP.dll
   163840 C:\Windows\System32\CCG.exe
   163840 C:\Windows\System32\fdSSDP.dll
   163840 C:\Windows\System32\wmpshell.dll
   163840 C:\Windows\System32\fhmanagew.exe
   163840 C:\Windows\System32\Chakrathunk.dll
   163840 C:\Windows\System32\CustomInstallExec.exe
   163840 C:\Windows\System32\spoolss.dll
   163840 C:\Windows\System32\imapi.dll
   163840 C:\Windows\System32\UXInit.dll
   163840 C:\Windows\System32\DisplayManager.dll
   163840 C:\Windows\System32\msaudite.dll
   163840 C:\Windows\System32\ufat.dll
   163840 C:\Windows\System32\wcimage.dll
   163840 C:\Windows\System32\ngcksp.dll
   163840 C:\Windows\System32\mgmtrefreshcredprov.dll
   163840 C:\Windows\System32\PerformanceTraceHandler.dll
   163840 C:\Windows\System32\iasacct.dll
   163840 C:\Windows\System32\hlink.dll
   163840 C:\Windows\System32\rshx32.dll
   163840 C:\Windows\System32\vbssysprep.dll
   163840 C:\Windows\System32\VaultCDS.dll
   163840 C:\Windows\System32\CfgSPCellular.dll
   163840 C:\Windows\System32\Windows.SharedPC.CredentialProvider.dll
   163840 C:\Windows\System32\edpauditapi.dll
   163592 C:\Windows\System32\appverif.exe
   162850 C:\Windows\System32\C_932.NLS
   162850 C:\Windows\System32\C_10001.NLS
   162616 C:\Windows\System32\bcd.dll
   161184 C:\Windows\System32\ImplatSetup.dll
   161152 C:\Windows\System32\RdpShellLoader.dll
   161152 C:\Windows\System32\ThreatExperienceManager.dll
   159744 C:\Windows\System32\UpdateReboot.dll
   159744 C:\Windows\System32\CapabilityAccessHandlers.dll
   159744 C:\Windows\System32\dtdump.exe
   159744 C:\Windows\System32\elshyph.dll
   159744 C:\Windows\System32\MSAMRNBDecoder.dll
   159744 C:\Windows\System32\browserexport.exe
   159744 C:\Windows\System32\btpanui.dll
   159744 C:\Windows\System32\DevicePairingExperienceMEM.dll
   159744 C:\Windows\System32\iasnap.dll
   159744 C:\Windows\System32\ActionCenterCPL.dll
   159744 C:\Windows\System32\WinSyncProviders.dll
   159744 C:\Windows\System32\SecureTimeAggregator.dll
   159744 C:\Windows\System32\HrtfApo.dll
   159744 C:\Windows\System32\raserver.exe
   159744 C:\Windows\System32\cryptuiwizard.dll
   159744 C:\Windows\System32\mi.dll
   159744 C:\Windows\System32\AssignedAccessShellProxy.dll
   159744 C:\Windows\System32\win32kbase_rs.sys
   159744 C:\Windows\System32\PrinterCleanupTask.dll
   159744 C:\Windows\System32\vfpapi.dll
   159744 C:\Windows\System32\utcutil.dll
   159744 C:\Windows\System32\Windows.Management.ModernDeployment.ConfigProviders.dll
   159744 C:\Windows\System32\MediaFoundationAggregator.dll
   159744 C:\Windows\System32\FileDialogBroker.exe
   159744 C:\Windows\System32\hascsp.dll
   158720 C:\Windows\System32\Windows.Help.Runtime.dll
   158472 C:\Windows\System32\nettracehelper.dll
   158456 C:\Windows\System32\AuthHost.exe
   157162 C:\Windows\System32\perfc00A.dat
   157096 C:\Windows\System32\ConsentUX.dll
   157096 C:\Windows\System32\hpatchmon.dll
   157088 C:\Windows\System32\xmlfilter.dll
   157088 C:\Windows\System32\kdnet.dll
   156032 C:\Windows\System32\wuauclt.exe
   156032 C:\Windows\System32\storewuauth.dll
   156024 C:\Windows\System32\SettingsHandlers_Resume.dll
   155648 C:\Windows\System32\mtstocom.exe
   155648 C:\Windows\System32\UserAccountControlSettings.exe
   155648 C:\Windows\System32\CloudDomainJoinAUG.dll
   155648 C:\Windows\System32\networkhelper.dll
   155648 C:\Windows\System32\CfgSPPolicy.dll
   155648 C:\Windows\System32\BdeHdCfg.exe
   155648 C:\Windows\System32\WindowsDefaultHeatProcessor.dll
   155648 C:\Windows\System32\MdSched.exe
   155648 C:\Windows\System32\mmcshext.dll
   155648 C:\Windows\System32\profprov.dll
   155648 C:\Windows\System32\desktopimgdownldr.exe
   155648 C:\Windows\System32\PktMonApi.dll
   155648 C:\Windows\System32\AuthBrokerUI.dll
   155648 C:\Windows\System32\VSD3DWARPDebug.dll
   155648 C:\Windows\System32\HgsClientWmi.dll
   155648 C:\Windows\System32\wlidfdp.dll
   155648 C:\Windows\System32\wshom.ocx
   155648 C:\Windows\System32\DafPrintProvider.dll
   155648 C:\Windows\System32\appidpolicyconverter.exe
   155648 C:\Windows\System32\cabapi.dll
   155648 C:\Windows\System32\repair-bde.exe
   155648 C:\Windows\System32\GameChatTranscription.dll
   155648 C:\Windows\System32\ddptrace.dll
   155648 C:\Windows\System32\ssdm.dll
   155648 C:\Windows\System32\Windows.Networking.NetworkOperators.HotspotAuthentication.dll
   155648 C:\Windows\System32\wkspbrokerAx.dll
   155648 C:\Windows\System32\dmview.ocx
   155648 C:\Windows\System32\Windows.Networking.Sockets.PushEnabledApplication.dll
   155648 C:\Windows\System32\sdshext.dll
   155648 C:\Windows\System32\PrintWSDAHost.dll
   155648 C:\Windows\System32\cryptsvc.dll
   154344 C:\Windows\System32\wlrmdr.exe
   153088 C:\Windows\System32\HpTcpMib.dll
   153016 C:\Windows\System32\cmclient.dll
   152992 C:\Windows\System32\oemlicense.dll
   152976 C:\Windows\System32\dhcpcsvc.dll
   152976 C:\Windows\System32\Windows.StateRepositoryBroker.dll
   152976 C:\Windows\System32\apisetschema.dll
   152960 C:\Windows\System32\DeviceCensus.exe
   151552 C:\Windows\System32\fontsub.dll
   151552 C:\Windows\System32\wlanext.exe
   151552 C:\Windows\System32\RemoteRemediationCSP.dll
   151552 C:\Windows\System32\DAFWiProv.dll
   151552 C:\Windows\System32\Windows.UI.Xaml.Resources.win8rtm.dll
   151552 C:\Windows\System32\PNPXAssoc.dll
   151552 C:\Windows\System32\SettingsHandlers_DesktopDisplay.dll
   151552 C:\Windows\System32\PortableDeviceClassExtension.dll
   151552 C:\Windows\System32\gcdef.dll
   151552 C:\Windows\System32\fontview.exe
   151552 C:\Windows\System32\CoreShellExtFramework.dll
   151552 C:\Windows\System32\KeywordDetectorMsftSidAdapter.dll
   151552 C:\Windows\System32\iscsiwmiv2.dll
   151552 C:\Windows\System32\ntlanman.dll
   151552 C:\Windows\System32\Windows.ApplicationModel.Background.SystemEventsBroker.dll
   151552 C:\Windows\System32\dxgiadaptercache.exe
   151552 C:\Windows\System32\DeviceMetadataRetrievalClient.dll
   151552 C:\Windows\System32\CameraCaptureUI.dll
   151552 C:\Windows\System32\DXGIDebug.dll
   151552 C:\Windows\System32\DeviceDriverRetrievalClient.dll
   151552 C:\Windows\System32\AuditNativeSnapIn.dll
   151552 C:\Windows\System32\EhStorAPI.dll
   151552 C:\Windows\System32\msscntrs.dll
   151552 C:\Windows\System32\xwreg.dll
   151552 C:\Windows\System32\dskquota.dll
   151552 C:\Windows\System32\Family.Client.dll
   151552 C:\Windows\System32\compstui.dll
   151552 C:\Windows\System32\EhStorAuthn.exe
   151552 C:\Windows\System32\dccw.exe
   150936 C:\Windows\System32\wups.dll
   150928 C:\Windows\System32\wups2.dll
   150224 C:\Windows\System32\zthelper.dll
   150208 C:\Windows\System32\directsr.dll
   150192 C:\Windows\System32\rgnupdt.exe
   149056 C:\Windows\System32\LargeRoom.bin
   148864 C:\Windows\System32\vmsifcore.dll
   148800 C:\Windows\System32\migisol.dll
   147456 C:\Windows\System32\inseng.dll
   147456 C:\Windows\System32\rekeywiz.exe
   147456 C:\Windows\System32\UserAccountControlSettings.dll
   147456 C:\Windows\System32\iepeers.dll
   147456 C:\Windows\System32\ResBParser.dll
   147456 C:\Windows\System32\immersivetpmvscmgrsvr.exe
   147456 C:\Windows\System32\isoburn.exe
   147456 C:\Windows\System32\chartv.dll
   147456 C:\Windows\System32\dbnetlib.dll
   147456 C:\Windows\System32\SimCfg.dll
   147456 C:\Windows\System32\fhsvc.dll
   147456 C:\Windows\System32\wpnsruprov.dll
   147456 C:\Windows\System32\edptask.dll
   147456 C:\Windows\System32\Windows.Media.Renewal.dll
   147456 C:\Windows\System32\dmsynth.dll
   147456 C:\Windows\System32\spbcd.dll
   147456 C:\Windows\System32\sppc.dll
   147456 C:\Windows\System32\HashtagDS.dll
   147456 C:\Windows\System32\Windows.Internal.Management.SecureAssessment.dll
   147456 C:\Windows\System32\httpprxm.dll
   147456 C:\Windows\System32\VaultRoaming.dll
   147456 C:\Windows\System32\UserDataTimeUtil.dll
   147456 C:\Windows\System32\FontProvider.dll
   147456 C:\Windows\System32\DAMediaManager.dll
   147456 C:\Windows\System32\genpix.dll
   147456 C:\Windows\System32\SettingsHandlers_AppControl.dll
   147456 C:\Windows\System32\PlaySndSrv.dll
   147456 C:\Windows\System32\csplte.dll
   147456 C:\Windows\System32\officecsp.dll
   147456 C:\Windows\System32\odbccp32.dll
   147456 C:\Windows\System32\ClipDLS.exe
   147456 C:\Windows\System32\AtBroker.exe
   147456 C:\Windows\System32\txflog.dll
   147456 C:\Windows\System32\KnobsCsp.dll
   147439 C:\Windows\System32\gpedit.msc
   146080 C:\Windows\System32\mpr.dll
   146080 C:\Windows\System32\D3D12.dll
   146080 C:\Windows\System32\SecurityHealthService.exe
   146080 C:\Windows\System32\srvcli.dll
   146072 C:\Windows\System32\devenum.dll
   146056 C:\Windows\System32\msacm32.dll
   145712 C:\Windows\System32\slmgr.vbs
   145622 C:\Windows\System32\devmgmt.msc
   145519 C:\Windows\System32\perfmon.msc
   145127 C:\Windows\System32\eventvwr.msc
   145059 C:\Windows\System32\taskschd.msc
   144998 C:\Windows\System32\lusrmgr.msc
   144967 C:\Windows\System32\virtmgmt.msc
   144909 C:\Windows\System32\fsmgmt.msc
   144862 C:\Windows\System32\tpm.msc
   144800 C:\Windows\System32\ClipRenew.exe
   144792 C:\Windows\System32\p9np.dll
   144768 C:\Windows\System32\HvsiManagementApi.dll
   144768 C:\Windows\System32\rdp4vs.dll
   144680 C:\Windows\System32\HPMUIDir.exe
   144673 C:\Windows\System32\WmiMgmt.msc
   143360 C:\Windows\System32\netfxperf.dll
   143360 C:\Windows\System32\NetDriverInstall.dll
   143360 C:\Windows\System32\PinEnrollmentHelper.dll
   143360 C:\Windows\System32\TrustedSignalCredProv.dll
   143360 C:\Windows\System32\comrepl.dll
   143360 C:\Windows\System32\avifil32.dll
   143360 C:\Windows\System32\dfrgui.exe
   143360 C:\Windows\System32\dab.dll
   143360 C:\Windows\System32\rasauto.dll
   143360 C:\Windows\System32\UPPrinterInstallsCSP.dll
   143360 C:\Windows\System32\NetworkCollectionAgent.dll
   143360 C:\Windows\System32\EduPrintProv.exe
   143360 C:\Windows\System32\msoert2.dll
   143360 C:\Windows\System32\mprmsg.dll
   143360 C:\Windows\System32\onexui.dll
   143360 C:\Windows\System32\efslsaext.dll
   143360 C:\Windows\System32\adrclient.dll
   143360 C:\Windows\System32\ipxlatcfg.dll
   143360 C:\Windows\System32\win32appinventorycsp.dll
   143360 C:\Windows\System32\socialapis.dll
   143360 C:\Windows\System32\winrscmd.dll
   143360 C:\Windows\System32\appvetwclientres.dll
   143360 C:\Windows\System32\rmttpmvscmgrsvr.exe
   143360 C:\Windows\System32\tpmvscmgrsvr.exe
   143360 C:\Windows\System32\icsvcext.dll
   143360 C:\Windows\System32\PrintIsolationProxy.dll
   143360 C:\Windows\System32\MapsBtSvc.dll
   143360 C:\Windows\System32\MosHostClient.dll
   143360 C:\Windows\System32\sysclass.dll
   141992 C:\Windows\System32\MP3DMOD.DLL
   141952 C:\Windows\System32\VIDRESZR.DLL
   140696 C:\Windows\System32\DeviceReactivation.dll
   140672 C:\Windows\System32\offlinelsa.dll
   139810 C:\Windows\System32\C_20261.NLS
   139696 C:\Windows\System32\mcupdate_AuthenticAMD.dll
   139648 C:\Windows\System32\updatepolicy.dll
   139264 C:\Windows\System32\mobilenetworking.dll
   139264 C:\Windows\System32\tcpmonui.dll
   139264 C:\Windows\System32\PrintBrmUi.exe
   139264 C:\Windows\System32\sihost.exe
   139264 C:\Windows\System32\Windows.Management.SecureAssessment.CfgProvider.dll
   139264 C:\Windows\System32\AppHostRegistrationVerifier.exe
   139264 C:\Windows\System32\Windows.Networking.BackgroundTransfer.BackgroundManagerPolicy.dll
   139264 C:\Windows\System32\DuCsps.dll
   139264 C:\Windows\System32\Microsoft.LocalUserImageProvider.dll
   139264 C:\Windows\System32\EapTeapExt.dll
   139264 C:\Windows\System32\hvsiproxyapp.exe
   139264 C:\Windows\System32\OptionalFeatures.exe
   139264 C:\Windows\System32\trkwks.dll
   139264 C:\Windows\System32\spfileq.dll
   139264 C:\Windows\System32\userinit.exe
   139264 C:\Windows\System32\nlansp_c.dll
   139264 C:\Windows\System32\MosStorage.dll
   139264 C:\Windows\System32\WSReset.exe
   139264 C:\Windows\System32\LocationWinPalMisc.dll
   139264 C:\Windows\System32\EhStorPwdMgr.dll
   139264 C:\Windows\System32\provmigrate.dll
   139264 C:\Windows\System32\xolehlp.dll
   139264 C:\Windows\System32\winsrvext.dll
   139264 C:\Windows\System32\ndfhcdiscovery.dll
   139264 C:\Windows\System32\CredProv2faHelper.dll
   139264 C:\Windows\System32\ime_textinputhelpers.dll
   139264 C:\Windows\System32\AcSpecfc.dll
   139264 C:\Windows\System32\chxranker.dll
   139264 C:\Windows\System32\XblAuthManagerProxy.dll
   139264 C:\Windows\System32\BrokerFileDialog.dll
   139264 C:\Windows\System32\resmon.exe
   139264 C:\Windows\System32\Fondue.exe
   139264 C:\Windows\System32\dsdmo.dll
   139264 C:\Windows\System32\NFCProvisioningPlugin.dll
   139264 C:\Windows\System32\autotimesvc.dll
   139264 C:\Windows\System32\BthRadioMedia.dll
   139264 C:\Windows\System32\dplcsp.dll
   138792 C:\Windows\System32\vfrdvcompat.dll
   138092 C:\Windows\System32\AverageRoom.bin
   137848 C:\Windows\System32\Windows.Shell.ServiceHostBuilder.dll
   137840 C:\Windows\System32\Windows.Security.Credentials.UI.CredentialPicker.dll
   137832 C:\Windows\System32\imagehlp.dll
   137816 C:\Windows\System32\FsIso.exe
   137808 C:\Windows\System32\tttracer.exe
   137808 C:\Windows\System32\DafDnsSd.dll
   137808 C:\Windows\System32\SensorsNativeApi.dll
   136974 C:\Windows\System32\perfc009.dat
   136624 C:\Windows\System32\kstvtune.ax
   135168 C:\Windows\System32\fdBth.dll
   135168 C:\Windows\System32\iscsicpl.dll
   135168 C:\Windows\System32\DevicePairingFolder.dll
   135168 C:\Windows\System32\noise.dll
   135168 C:\Windows\System32\cngcredui.dll
   135168 C:\Windows\System32\dmcfgutils.dll
   135168 C:\Windows\System32\dmwappushsvc.dll
   135168 C:\Windows\System32\telephon.cpl
   135168 C:\Windows\System32\PCShellCommonProxyStub.dll
   135168 C:\Windows\System32\VirtualSurroundApo.dll
   135168 C:\Windows\System32\secproc_ssp.dll
   135168 C:\Windows\System32\enterpriseresourcemanager.dll
   135168 C:\Windows\System32\usbceip.dll
   135168 C:\Windows\System32\LanguagePackDiskCleanup.dll
   135168 C:\Windows\System32\secproc_ssp_isv.dll
   135168 C:\Windows\System32\uexfat.dll
   135168 C:\Windows\System32\Windows.Internal.AdaptiveCards.XamlCardRenderer.dll
   135168 C:\Windows\System32\PinEnrollmentBroker.exe
   135168 C:\Windows\System32\mssign32.dll
   135168 C:\Windows\System32\MsSpellCheckingHost.exe
   135168 C:\Windows\System32\fphc.dll
   135168 C:\Windows\System32\EditBufferTestHook.dll
   135168 C:\Windows\System32\EnterpriseAPNCsp.dll
   135168 C:\Windows\System32\wercplsupport.dll
   135168 C:\Windows\System32\InputSwitchToastHandler.exe
   135168 C:\Windows\System32\LicenseManagerApi.dll
   135168 C:\Windows\System32\PackageStateChangeHandler.dll
   135168 C:\Windows\System32\lapscsp.dll
   135168 C:\Windows\System32\AssignedAccessGuard.exe
   135168 C:\Windows\System32\MTFSpellcheckDS.dll
   133728 C:\Windows\System32\WindowsManagementServiceWinRt.ProxyStub.dll
   133688 C:\Windows\System32\phoneactivate.exe
   133680 C:\Windows\System32\RuntimeBroker.exe
   133672 C:\Windows\System32\nshdnsclient.dll
   133120 C:\Windows\System32\fhuxadapter.dll
   132552 C:\Windows\System32\vmhgs.dll
   132520 C:\Windows\System32\vmwpevents.dll
   132512 C:\Windows\System32\dhcpcsvc6.dll
   132496 C:\Windows\System32\dwminit.dll
   132480 C:\Windows\System32\netcfgx.dll
   132152 C:\Windows\System32\Microsoft.Media.PlayReady.Appraiser.dll
   132096 C:\Windows\System32\hpzjrd01.dll
   131072 C:\Windows\System32\RMSRoamingSecurity.dll
   131072 C:\Windows\System32\pnpclean.dll
   131072 C:\Windows\System32\ApplicationControlCSP.dll
   131072 C:\Windows\System32\themeservice.dll
   131072 C:\Windows\System32\adsmsext.dll
   131072 C:\Windows\System32\BdeHdCfgLib.dll
   131072 C:\Windows\System32\NcdAutoSetup.dll
   131072 C:\Windows\System32\SMBHelperClass.dll
   131072 C:\Windows\System32\ProximityServicePal.dll
   131072 C:\Windows\System32\xboxgipsvc.dll
   131072 C:\Windows\System32\windowsudkservices.shellcommon.dll
   131072 C:\Windows\System32\winhttpcom.dll
   131072 C:\Windows\System32\PeerDistHttpTrans.dll
   131072 C:\Windows\System32\SettingsHandlers_OneDriveBackup.dll
   131072 C:\Windows\System32\spopk.dll
   131072 C:\Windows\System32\vfuprov.dll
   131072 C:\Windows\System32\dwm.exe
   131072 C:\Windows\System32\loadperf.dll
   131072 C:\Windows\System32\WFDSConMgr.dll
   131072 C:\Windows\System32\Windows.Networking.ServiceDiscovery.Dnssd.dll
   131072 C:\Windows\System32\mcbuilder.exe
   131072 C:\Windows\System32\eapprovp.dll
   131072 C:\Windows\System32\fdWCN.dll
   131072 C:\Windows\System32\EnterpriseDesktopAppMgmtCSP.dll
   131072 C:\Windows\System32\wecutil.exe
   131072 C:\Windows\System32\Windows.AI.MachineLearning.Preview.dll
   131072 C:\Windows\System32\logagent.exe
   131072 C:\Windows\System32\ie4ushowIE.exe
   131072 C:\Windows\System32\Win32_DeviceGuard.dll
   131072 C:\Windows\System32\computenetwork.dll
   131072 C:\Windows\System32\mobsync.exe
   131072 C:\Windows\System32\hotplug.dll
   131072 C:\Windows\System32\cloudidsvc.dll
   131072 C:\Windows\System32\MitigationConfiguration.dll
   131072 C:\Windows\System32\vmhbmgmt.dll
   131072 C:\Windows\System32\davclnt.dll
   131072 C:\Windows\System32\lpremove.exe
   131072 C:\Windows\System32\DiagnosticInvoker.dll
   129552 C:\Windows\System32\deviceassociation.dll
   129552 C:\Windows\System32\nshhttp.dll
   129464 C:\Windows\System32\changepk.exe
   128432 C:\Windows\System32\psisrndr.ax
   128416 C:\Windows\System32\Windows.Security.Integrity.dll
   128408 C:\Windows\System32\TenantRestrictionsPlugin.dll
   128408 C:\Windows\System32\wifitask.exe
   128384 C:\Windows\System32\nmbind.exe
   128384 C:\Windows\System32\SecurityHealthSsoUdk.dll
   126976 C:\Windows\System32\BcastDVRBroker.dll
   126976 C:\Windows\System32\systemcpl.dll
   126976 C:\Windows\System32\systeminfo.exe
   126976 C:\Windows\System32\Midi2.UmpProtocolDownscalerTransform.dll
   126976 C:\Windows\System32\wiascanprofiles.dll
   126976 C:\Windows\System32\pcalua.exe
   126976 C:\Windows\System32\WinUICohabitation.dll
   126976 C:\Windows\System32\dxgwdi.dll
   126976 C:\Windows\System32\BluetoothOppPushClient.dll
   126976 C:\Windows\System32\winethc.dll
   126976 C:\Windows\System32\mssitlb.dll
   126976 C:\Windows\System32\spinf.dll
   126976 C:\Windows\System32\mciavi32.dll
   126976 C:\Windows\System32\CastLaunch.dll
   126976 C:\Windows\System32\eappgnui.dll
   126976 C:\Windows\System32\CertEnrollCtrl.exe
   126976 C:\Windows\System32\netsh.exe
   126976 C:\Windows\System32\mshtmled.dll
   126976 C:\Windows\System32\recovery.dll
   126976 C:\Windows\System32\keyiso.dll
   126976 C:\Windows\System32\wdi.dll
   126976 C:\Windows\System32\tpmvscmgr.exe
   126976 C:\Windows\System32\DafGip.dll
   126976 C:\Windows\System32\mycomput.dll
   126976 C:\Windows\System32\raschapext.dll
   126976 C:\Windows\System32\Print.Workflow.Source.dll
   126976 C:\Windows\System32\BitLockerWizard.exe
   126976 C:\Windows\System32\DeviceSetupManagerAPI.dll
   126976 C:\Windows\System32\BitLockerWizardElev.exe
   126976 C:\Windows\System32\pdhui.dll
   126976 C:\Windows\System32\wiaacmgr.exe
   126976 C:\Windows\System32\remotesp.tsp
   126976 C:\Windows\System32\wiarpc.dll
   126976 C:\Windows\System32\ncpa.cpl
   126976 C:\Windows\System32\wlidnsp.dll
   126976 C:\Windows\System32\mf3216.dll
   126976 C:\Windows\System32\dot3msm.dll
   126976 C:\Windows\System32\provdatastore.dll
   126976 C:\Windows\System32\LanguagePackManagementCSP.dll
   126376 C:\Windows\System32\vfnet.dll
   125856 C:\Windows\System32\HPUnifiedIODotNET.dll
   124344 C:\Windows\System32\bdaplgin.ax
   124320 C:\Windows\System32\vmwpctrl.dll
   124320 C:\Windows\System32\mimefilt.dll
   124208 C:\Windows\System32\WSTPager.ax
   124118 C:\Windows\System32\comexp.msc
   123472 C:\Windows\System32\vcruntime140.dll
   122880 C:\Windows\System32\bidispl.dll
   122880 C:\Windows\System32\eeutil.dll
   122880 C:\Windows\System32\Midi2.MidiSrvTransport.dll
   122880 C:\Windows\System32\dot3gpclnt.dll
   122880 C:\Windows\System32\DeviceCredentialDeployment.exe
   122880 C:\Windows\System32\winipsec.dll
   122880 C:\Windows\System32\runonce.exe
   122880 C:\Windows\System32\xboxgipsynthetic.dll
   122880 C:\Windows\System32\batmeter.dll
   122880 C:\Windows\System32\UPPrinterInstaller.exe
   122880 C:\Windows\System32\radardt.dll
   122880 C:\Windows\System32\domgmt.dll
   122880 C:\Windows\System32\StorageContextHandler.dll
   122880 C:\Windows\System32\MapsCSP.dll
   122880 C:\Windows\System32\amstream.dll
   122880 C:\Windows\System32\iashlpr.dll
   122880 C:\Windows\System32\DevicePairingWizard.exe
   122880 C:\Windows\System32\rdpsign.exe
   122880 C:\Windows\System32\PrintIsolationHost.exe
   122880 C:\Windows\System32\packager.dll
   122880 C:\Windows\System32\activeds.tlb
   122880 C:\Windows\System32\tasklist.exe
   122880 C:\Windows\System32\CastingShellExt.dll
   122880 C:\Windows\System32\atl.dll
   122880 C:\Windows\System32\bthci.dll
   122880 C:\Windows\System32\GPCSEWrapperCsp.dll
   122880 C:\Windows\System32\wdmaud2.drv
   122880 C:\Windows\System32\printfilterpipelineprxy.dll
   122880 C:\Windows\System32\moshost.dll
   122880 C:\Windows\System32\MiracastReceiverExt.dll
   122880 C:\Windows\System32\gpscript.dll
   122880 C:\Windows\System32\cmstp.exe
   122880 C:\Windows\System32\control.exe
   122880 C:\Windows\System32\efsext.dll
   122880 C:\Windows\System32\WpnUserService.dll
   122880 C:\Windows\System32\wsqmcons.exe
   122880 C:\Windows\System32\popkeycli.dll
   122880 C:\Windows\System32\slwga.dll
   122880 C:\Windows\System32\smartscreenps.dll
   122880 C:\Windows\System32\Windows.Devices.Custom.dll
   121288 C:\Windows\System32\cryptsp.dll
   121288 C:\Windows\System32\kernel.appcore.dll
   121288 C:\Windows\System32\mfvdsp.dll
   121280 C:\Windows\System32\wkscli.dll
   120458 C:\Windows\System32\secpol.msc
   120264 C:\Windows\System32\MpeHttpExt.dll
   120192 C:\Windows\System32\SecurityHealthHost.exe
   120192 C:\Windows\System32\cmproxyd.exe
   118784 C:\Windows\System32\Windows.Cortana.ProxyStub.dll
   118784 C:\Windows\System32\gpscript.exe
   118784 C:\Windows\System32\PhonePlatformAbstraction.dll
   118784 C:\Windows\System32\WalletProxy.dll
   118784 C:\Windows\System32\VoiceActivationManager.dll
   118784 C:\Windows\System32\prauthproviders.dll
   118784 C:\Windows\System32\pnpui.dll
   118784 C:\Windows\System32\WwanRadioManager.dll
   118784 C:\Windows\System32\BarcodeProvisioningPlugin.dll
   118784 C:\Windows\System32\windows.applicationmodel.conversationalagent.proxystub.dll
   118784 C:\Windows\System32\ProvPluginEng.dll
   118784 C:\Windows\System32\CompPkgSrv.exe
   118784 C:\Windows\System32\appidsvc.dll
   118784 C:\Windows\System32\logman.exe
   118784 C:\Windows\System32\efssvc.dll
   118784 C:\Windows\System32\shellstyle.dll
   118784 C:\Windows\System32\cngprovider.dll
   118784 C:\Windows\System32\wiashext.dll
   118784 C:\Windows\System32\cliconfg.dll
   118784 C:\Windows\System32\wevtfwd.dll
   118784 C:\Windows\System32\AppListBackupLauncher.dll
   118784 C:\Windows\System32\clfsw32.dll
   118784 C:\Windows\System32\wmdmps.dll
   118784 C:\Windows\System32\l3codeca.acm
   118784 C:\Windows\System32\WSDPrintProxy.DLL
   118784 C:\Windows\System32\SettingsHandlers_UserExperience.dll
   118784 C:\Windows\System32\PeopleAPIs.dll
   118784 C:\Windows\System32\SystemUWPLauncher.exe
   118784 C:\Windows\System32\taskkill.exe
   118784 C:\Windows\System32\MSAMRNBSource.dll
   118784 C:\Windows\System32\BluetoothDesktopHandlers.dll
   118784 C:\Windows\System32\XpsToPwgrConverter.dll
   118784 C:\Windows\System32\remotepg.dll
   118784 C:\Windows\System32\zipcontainer.dll
   118784 C:\Windows\System32\CallButtons.dll
   118784 C:\Windows\System32\museuxdocked.dll
   118784 C:\Windows\System32\MuiUnattend.exe
   118784 C:\Windows\System32\joy.cpl
   118784 C:\Windows\System32\capiprovider.dll
   118784 C:\Windows\System32\TSWbPrxy.exe
   118784 C:\Windows\System32\TSSessionUX.dll
   117184 C:\Windows\System32\tbs.dll
   117160 C:\Windows\System32\netapi32.dll
   117152 C:\Windows\System32\Windows.StateRepositoryCore.dll
   117136 C:\Windows\System32\taskhostw.exe
   117128 C:\Windows\System32\remoteaudioendpoint.dll
   116168 C:\Windows\System32\wcsetupagent.exe
   116152 C:\Windows\System32\Mpeg2Data.ax
   116144 C:\Windows\System32\PSHED.DLL
   115109 C:\Windows\System32\WF.msc
   114688 C:\Windows\System32\ConfigureExpandedStorage.dll
   114688 C:\Windows\System32\provtool.exe
   114688 C:\Windows\System32\ReAgentc.exe
   114688 C:\Windows\System32\XInput1_4.dll
   114688 C:\Windows\System32\Windows.Gaming.UI.GameBar.dll
   114688 C:\Windows\System32\offreg.dll
   114688 C:\Windows\System32\AppMon.dll
   114688 C:\Windows\System32\CompMgmtLauncher.exe
   114688 C:\Windows\System32\hmkd.dll
   114688 C:\Windows\System32\EAMProgressHandler.dll
   114688 C:\Windows\System32\KdsCli.dll
   114688 C:\Windows\System32\Windows.System.UserProfile.DiagnosticsSettings.dll
   114688 C:\Windows\System32\MicrosoftEdgeCP.exe
   114688 C:\Windows\System32\samcli.dll
   114688 C:\Windows\System32\EnterpriseAppVMgmtCSP.dll
   114688 C:\Windows\System32\tabcal.exe
   114688 C:\Windows\System32\MTFAppServiceDS.dll
   114688 C:\Windows\System32\mbussdapi.dll
   114688 C:\Windows\System32\XPSSHHDR.dll
   114688 C:\Windows\System32\MicrosoftEdgeDevTools.exe
   114688 C:\Windows\System32\MicrosoftEdgeBCHost.exe
   114688 C:\Windows\System32\RDSAppXHelper.dll
   114688 C:\Windows\System32\umpowmi.dll
   114688 C:\Windows\System32\mibincodec.dll
   114688 C:\Windows\System32\amsi.dll
   114688 C:\Windows\System32\Family.Authentication.dll
   114688 C:\Windows\System32\nslookup.exe
   114688 C:\Windows\System32\MaintenanceUI.dll
   114688 C:\Windows\System32\rdvvmtransport.dll
   114688 C:\Windows\System32\gamemode.dll
   114688 C:\Windows\System32\SettingsHandlers_AdvertisingId.dll
   114688 C:\Windows\System32\WorkFolders.exe
   114688 C:\Windows\System32\luiapi.dll
   114688 C:\Windows\System32\XblAuthTokenBrokerExt.dll
   114688 C:\Windows\System32\vds_ps.dll
   114688 C:\Windows\System32\WinMsoIrmProtector.dll
   114688 C:\Windows\System32\ByteCodeGenerator.exe
   114688 C:\Windows\System32\scripto.dll
   114688 C:\Windows\System32\cttune.exe
   114688 C:\Windows\System32\RuleBasedDS.dll
   114688 C:\Windows\System32\Windows.System.UserDeviceAssociation.dll
   113256 C:\Windows\System32\compmgmt.msc
   113152 C:\Windows\System32\AuthFWWizFwk.dll
   113040 C:\Windows\System32\CredentialEnrollmentManagerForUser.dll
   113032 C:\Windows\System32\Microsoft.Internal.WarpPal.dll
   113024 C:\Windows\System32\NtlmShared.dll
   113000 C:\Windows\System32\CloudNotifications.exe
   112056 C:\Windows\System32\MSDvbNP.ax
   112032 C:\Windows\System32\microsoft-windows-kernel-pnp-events.dll
   112032 C:\Windows\System32\bootsect.exe
   112000 C:\Windows\System32\spaceman.exe
   111664 C:\Windows\System32\mfcm140d.dll
   110640 C:\Windows\System32\mfcm140ud.dll
   110592 C:\Windows\System32\sfc.exe
   110592 C:\Windows\System32\hbaapi.dll
   110592 C:\Windows\System32\WSManMigrationPlugin.dll
   110592 C:\Windows\System32\adprovider.dll
   110592 C:\Windows\System32\WinBioDataModelOOBE.exe
   110592 C:\Windows\System32\usosvc.dll
   110592 C:\Windows\System32\LegacySystemSettings.dll
   110592 C:\Windows\System32\TranscodeWallpaper.dll
   110592 C:\Windows\System32\makecab.exe
   110592 C:\Windows\System32\cca.dll
   110592 C:\Windows\System32\wudriver.dll
   110592 C:\Windows\System32\avicap32.dll
   110592 C:\Windows\System32\asycfilt.dll
   110592 C:\Windows\System32\runexehelper.exe
   110592 C:\Windows\System32\usbui.dll
   110592 C:\Windows\System32\colorcpl.exe
   110592 C:\Windows\System32\reg.exe
   110592 C:\Windows\System32\RpcEpMap.dll
   110592 C:\Windows\System32\srhelper.dll
   110592 C:\Windows\System32\fmapi.dll
   110592 C:\Windows\System32\wshext.dll
   110592 C:\Windows\System32\rasdiag.dll
   110592 C:\Windows\System32\wslapi.dll
   110592 C:\Windows\System32\VsGraphicsProxyStub.dll
   110592 C:\Windows\System32\netcfg.exe
   110592 C:\Windows\System32\mspatchc.dll
   110592 C:\Windows\System32\srwmi.dll
   110592 C:\Windows\System32\dpapiprovider.dll
   110592 C:\Windows\System32\dsuiext.dll
   110592 C:\Windows\System32\credui.dll
   110592 C:\Windows\System32\bitsigd.dll
   110592 C:\Windows\System32\correngine.dll
   110592 C:\Windows\System32\vdsvd.dll
   110592 C:\Windows\System32\adhsvc.dll
   110592 C:\Windows\System32\eqossnap.dll
   110592 C:\Windows\System32\MdRes.exe
   110592 C:\Windows\System32\colbact.dll
   110592 C:\Windows\System32\networkexplorer.dll
   110592 C:\Windows\System32\cfgbkend.dll
   110592 C:\Windows\System32\PrinterAssociationCommon.dll
   110592 C:\Windows\System32\DeviceCompanionAppInstall.dll
   110036 C:\Windows\System32\MediumRoom.bin
   108936 C:\Windows\System32\sbresources.dll
   108928 C:\Windows\System32\wininetlui.dll
   108896 C:\Windows\System32\wow64con.dll
   108888 C:\Windows\System32\iuilp.dll
   108864 C:\Windows\System32\sessionmsg.exe
   108792 C:\Windows\System32\NapiNSP.dll
   107960 C:\Windows\System32\HvsiMachinePolicies.dll
   107944 C:\Windows\System32\hspapi.dll
   107920 C:\Windows\System32\hvhostsvc.dll
   106496 C:\Windows\System32\prvdmofcomp.dll
   106496 C:\Windows\System32\wscui.cpl
   106496 C:\Windows\System32\cmmon32.exe
   106496 C:\Windows\System32\msvcirt.dll
   106496 C:\Windows\System32\SystemPropertiesAdvanced.exe
   106496 C:\Windows\System32\lltdapi.dll
   106496 C:\Windows\System32\audioresourceregistrar.dll
   106496 C:\Windows\System32\SystemPropertiesRemote.exe
   106496 C:\Windows\System32\unimdmat.dll
   106496 C:\Windows\System32\auditpolmsg.dll
   106496 C:\Windows\System32\SystemPropertiesDataExecutionPrevention.exe
   106496 C:\Windows\System32\lodctr.exe
   106496 C:\Windows\System32\SystemPropertiesHardware.exe
   106496 C:\Windows\System32\djoin.exe
   106496 C:\Windows\System32\SystemPropertiesPerformance.exe
   106496 C:\Windows\System32\wsepno.dll
   106496 C:\Windows\System32\umb.dll
   106496 C:\Windows\System32\PackageInspector.exe
   106496 C:\Windows\System32\SystemPropertiesProtection.exe
   106496 C:\Windows\System32\SystemPropertiesComputerName.exe
   106496 C:\Windows\System32\UserLanguageProfileCallback.dll
   106496 C:\Windows\System32\InputLocaleManager.dll
   106496 C:\Windows\System32\winlogonext.dll
   106496 C:\Windows\System32\odbccr32.dll
   106496 C:\Windows\System32\odbccu32.dll
   106496 C:\Windows\System32\SCardDlg.dll
   106496 C:\Windows\System32\windows.internal.shellcommon.AccountsControlExperience.dll
   106496 C:\Windows\System32\mdminst.dll
   106496 C:\Windows\System32\WinOpcIrmProtector.dll
   106496 C:\Windows\System32\ngclocal.dll
   106496 C:\Windows\System32\eappprxy.dll
   106496 C:\Windows\System32\Midi2.DiagnosticsTransport.dll
   106496 C:\Windows\System32\iesetup.dll
   106496 C:\Windows\System32\MshtmlDac.dll
   106496 C:\Windows\System32\WUDFCoinstaller.dll
   106496 C:\Windows\System32\NetworkQoSPolicyCSP.dll
   106496 C:\Windows\System32\gmsaclient.dll
   106496 C:\Windows\System32\driverquery.exe
   106496 C:\Windows\System32\getmac.exe
   106496 C:\Windows\System32\WorkFoldersGPExt.dll
   106496 C:\Windows\System32\MsCtfMonitor.dll
   106496 C:\Windows\System32\bcdsrv.dll
   106496 C:\Windows\System32\MSchedExe.exe
   106496 C:\Windows\System32\tdc.ocx
   106496 C:\Windows\System32\RandomAccessStreamDataSource.dll
   106496 C:\Windows\System32\frprov.dll
   106496 C:\Windows\System32\Windows.Internal.Devices.Lights.Configuration.dll
   106496 C:\Windows\System32\eventvwr.exe
   106496 C:\Windows\System32\readCloudDataSettings.exe
   106496 C:\Windows\System32\l2gpstore.dll
   106496 C:\Windows\System32\updatecsp.dll
   106496 C:\Windows\System32\dmloader.dll
   106496 C:\Windows\System32\bnmanager.dll
   106496 C:\Windows\System32\iscsidsc.dll
   106496 C:\Windows\System32\KeyboardFilterManager.dll
   106496 C:\Windows\System32\iscsiwmi.dll
   106496 C:\Windows\System32\Windows.Media.Playback.ProxyStub.dll
   106496 C:\Windows\System32\SensorRuntimeBroker.exe
   106496 C:\Windows\System32\tetheringclient.dll
   104752 C:\Windows\System32\usermgrcli.dll
   104736 C:\Windows\System32\httpapi.dll
   103848 C:\Windows\System32\nlsbres.dll
   103840 C:\Windows\System32\RdpDwmEncoder.dll
   103832 C:\Windows\System32\virtdisk.dll
   102400 C:\Windows\System32\ETWESEProviderResources.dll
   102400 C:\Windows\System32\shacctprofile.dll
   102400 C:\Windows\System32\pcacli.dll
   102400 C:\Windows\System32\PresentationHostProxy.dll
   102400 C:\Windows\System32\CredProvCommonCore.dll
   102400 C:\Windows\System32\plutontasks.dll
   102400 C:\Windows\System32\ReInfo.dll
   102400 C:\Windows\System32\playlistfolder.dll
   102400 C:\Windows\System32\WSCollect.exe
   102400 C:\Windows\System32\XpsToTiffConverter.dll
   102400 C:\Windows\System32\KeyCredMgr.dll
   102400 C:\Windows\System32\ActiveSyncCsp.dll
   102400 C:\Windows\System32\MSAProfileNotificationHandler.dll
   102400 C:\Windows\System32\dimsroam.dll
   102400 C:\Windows\System32\InternetMailCsp.dll
   102400 C:\Windows\System32\fhuxgraphics.dll
   102400 C:\Windows\System32\WfHC.dll
   102400 C:\Windows\System32\vmstaging.dll
   102400 C:\Windows\System32\WindowsInternal.Shell.CompUiActivation.dll
   102400 C:\Windows\System32\usp10.dll
   102400 C:\Windows\System32\msfeedsbs.dll
   102400 C:\Windows\System32\RemoveDeviceContextHandler.dll
   102400 C:\Windows\System32\wsnmp32.dll
   102400 C:\Windows\System32\DfsShlEx.dll
   102400 C:\Windows\System32\ieUnatt.exe
   102400 C:\Windows\System32\DpiScaling.exe
   102400 C:\Windows\System32\ofdeploy.exe
   102400 C:\Windows\System32\loghours.dll
   102400 C:\Windows\System32\EmojiDS.dll
   102400 C:\Windows\System32\Windows.Devices.Background.dll
   102400 C:\Windows\System32\sstpcfg.dll
   102400 C:\Windows\System32\APHostClient.dll
   102400 C:\Windows\System32\WwanPrfl.dll
   102400 C:\Windows\System32\main.cpl
   102400 C:\Windows\System32\srmtrace.dll
   102400 C:\Windows\System32\sdiagschd.dll
   102400 C:\Windows\System32\Windows.System.Profile.PlatformDiagnosticsAndUsageDataSettings.dll
   102400 C:\Windows\System32\odbcad32.exe
   102400 C:\Windows\System32\Midi2.SchedulerTransform.dll
   102400 C:\Windows\System32\npmproxy.dll
   102400 C:\Windows\System32\Windows.Internal.PlatformExtension.MiracastBannerExperience.dll
   102400 C:\Windows\System32\tbauth.dll
   102400 C:\Windows\System32\DdcComImplementationsDesktop.dll
   102400 C:\Windows\System32\unenrollhook.dll
   102400 C:\Windows\System32\auditpolcore.dll
   102400 C:\Windows\System32\basesrv.dll
   102400 C:\Windows\System32\Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticAct...
   102400 C:\Windows\System32\sc.exe
   102400 C:\Windows\System32\sqlsrv32.rll
   102400 C:\Windows\System32\Syncreg.dll
   102400 C:\Windows\System32\iasdatastore.dll
   102400 C:\Windows\System32\sigverif.exe
   102400 C:\Windows\System32\dpapimig.exe
   102400 C:\Windows\System32\SmartCardBackgroundPolicy.dll
   102400 C:\Windows\System32\BingFilterDS.dll
   102400 C:\Windows\System32\scavengeui.dll
   101616 C:\Windows\System32\vfnws.dll
   100656 C:\Windows\System32\appidapi.dll
   100632 C:\Windows\System32\iumcrypt.dll
   100608 C:\Windows\System32\LockAppHost.exe
   100608 C:\Windows\System32\easinvoker.exe
    99768 C:\Windows\System32\rtpm.dll
    99744 C:\Windows\System32\kd_02_1414.dll
    99648 C:\Windows\System32\microsoft-windows-pdc.dll
    99632 C:\Windows\System32\ksxbar.ax
    98848 C:\Windows\System32\vcruntime140_clr0400.dll
    98304 C:\Windows\System32\srclient.dll
    98304 C:\Windows\System32\dataclen.dll
    98304 C:\Windows\System32\kdcpw.dll
    98304 C:\Windows\System32\cryptext.dll
    98304 C:\Windows\System32\Geocommon.dll
    98304 C:\Windows\System32\crypttpmeksvc.dll
    98304 C:\Windows\System32\DeviceCredential.dll
    98304 C:\Windows\System32\wecapi.dll
    98304 C:\Windows\System32\Windows.Internal.PlatformExtension.DevicePickerExperience.dll
    98304 C:\Windows\System32\PortableDeviceStatus.dll
    98304 C:\Windows\System32\Storprop.dll
    98304 C:\Windows\System32\iasads.dll
    98304 C:\Windows\System32\DialogBlockingService.dll
    98304 C:\Windows\System32\CertPKICmdlet.dll
    98304 C:\Windows\System32\navshutdown.dll
    98304 C:\Windows\System32\aadjcsp.dll
    98304 C:\Windows\System32\udhisapi.dll
    98304 C:\Windows\System32\vsstrace.dll
    98304 C:\Windows\System32\rasplap.dll
    98304 C:\Windows\System32\jpninputrouter.dll
    98304 C:\Windows\System32\netprovisionsp.dll
    98304 C:\Windows\System32\netprovfw.dll
    98304 C:\Windows\System32\rundll32.exe
    98304 C:\Windows\System32\NetCfgNotifyObjectHost.exe
    98304 C:\Windows\System32\ContactActivation.dll
    98304 C:\Windows\System32\DeviceSetupStatusProvider.dll
    98304 C:\Windows\System32\dimsjob.dll
    98304 C:\Windows\System32\dwmghost.dll
    98304 C:\Windows\System32\rpcnsh.dll
    98304 C:\Windows\System32\Windows.Devices.Printers.dll
    98304 C:\Windows\System32\dosvc.dll
    98304 C:\Windows\System32\whoami.exe
    98304 C:\Windows\System32\hotpatchutil.dll
    98304 C:\Windows\System32\ELSCore.dll
    98304 C:\Windows\System32\EventAggregation.dll
    98304 C:\Windows\System32\diagnosticdataquery.dll
    98304 C:\Windows\System32\sdchange.exe
    98304 C:\Windows\System32\pwrshplugin.dll
    98304 C:\Windows\System32\wincredprovider.dll
    98304 C:\Windows\System32\provisioningcommandscsp.dll
    98304 C:\Windows\System32\CompatAggregator.dll
    98304 C:\Windows\System32\WindowsProtectedPrintConfiguration.dll
    98304 C:\Windows\System32\OnDemandConnRouteHelper.dll
    98304 C:\Windows\System32\LocationFrameworkInternalPS.dll
    98304 C:\Windows\System32\RemovableMediaProvisioningPlugin.dll
    98304 C:\Windows\System32\opencl.dll
    98304 C:\Windows\System32\OobeShellHost.exe
    98304 C:\Windows\System32\certenc.dll
    98304 C:\Windows\System32\msisip.dll
    98304 C:\Windows\System32\LegacyNetUX.dll
    98304 C:\Windows\System32\AuthExt.dll
    98304 C:\Windows\System32\mskeyprotect.dll
    98304 C:\Windows\System32\bthpanapi.dll
    98304 C:\Windows\System32\deploymentcsps.dll
    98304 C:\Windows\System32\dynamoapi.dll
    98304 C:\Windows\System32\TokenBrokerUI.dll
    98304 C:\Windows\System32\DiskSnapshot.exe
    98304 C:\Windows\System32\TempSignedLicenseExchangeTask.dll
    98304 C:\Windows\System32\Sens.dll
    98304 C:\Windows\System32\ffbroker.dll
    98304 C:\Windows\System32\edpnotify.exe
    98304 C:\Windows\System32\XInputUap.dll
    96496 C:\Windows\System32\ApplicationFrameHost.exe
    96496 C:\Windows\System32\sqmapi.dll
    96472 C:\Windows\System32\dsclient.dll
    96472 C:\Windows\System32\RpcRtRemote.dll
    96256 C:\Windows\System32\DxToolsReportGenerator.dll
    95856 C:\Windows\System32\mfcm140.dll
    95824 C:\Windows\System32\mfcm140u.dll
    95656 C:\Windows\System32\fmifs.dll
    95648 C:\Windows\System32\spwizimg.dll
    95648 C:\Windows\System32\whealogr.dll
    95648 C:\Windows\System32\CloudExperienceHostBroker.exe
    95648 C:\Windows\System32\ttdplm.dll
    94208 C:\Windows\System32\printticketvalidation.dll
    94208 C:\Windows\System32\WiFiConfigSP.dll
    94208 C:\Windows\System32\TpmInit.exe
    94208 C:\Windows\System32\POSyncServices.dll
    94208 C:\Windows\System32\INETRES.dll
    94208 C:\Windows\System32\RemoteWipeCSP.dll
    94208 C:\Windows\System32\Windows.UI.NetworkUXController.dll
    94208 C:\Windows\System32\csrsrv.dll
    94208 C:\Windows\System32\tsgqec.dll
    94208 C:\Windows\System32\Windows.Devices.Portable.dll
    94208 C:\Windows\System32\icsigd.dll
    94208 C:\Windows\System32\hnetmon.dll
    94208 C:\Windows\System32\rtutils.dll
    94208 C:\Windows\System32\printui.exe
    94208 C:\Windows\System32\WlanRadioManager.dll
    94208 C:\Windows\System32\AddressParser.dll
    94208 C:\Windows\System32\iemigplugin.dll
    94208 C:\Windows\System32\MessagingService.dll
    94208 C:\Windows\System32\bcdprov.dll
    94208 C:\Windows\System32\FaxPrinterInstaller.dll
    94208 C:\Windows\System32\BackgroundMediaPolicy.dll
    94208 C:\Windows\System32\xwizard.exe
    94208 C:\Windows\System32\newdev.exe
    94208 C:\Windows\System32\Windows.Management.EnrollmentStatusTracking.ConfigProvider.dll
    94208 C:\Windows\System32\fhevents.dll
    94208 C:\Windows\System32\fhsrchapi.dll
    94208 C:\Windows\System32\ssdpapi.dll
    94208 C:\Windows\System32\TSTheme.exe
    94208 C:\Windows\System32\msident.dll
    94208 C:\Windows\System32\Midi2.BS2UMPTransform.dll
    94208 C:\Windows\System32\LSCSHostPolicy.dll
    94208 C:\Windows\System32\autofstx.exe
    94208 C:\Windows\System32\ntprint.exe
    94208 C:\Windows\System32\esentprf.dll
    94208 C:\Windows\System32\vfwwdm32.dll
    94208 C:\Windows\System32\openfiles.exe
    94208 C:\Windows\System32\pautoenr.dll
    94208 C:\Windows\System32\UserDataPlatformHelperUtil.dll
    94208 C:\Windows\System32\dfscli.dll
    94208 C:\Windows\System32\DmApiSetExtImplDesktop.dll
    94208 C:\Windows\System32\SortWindows6Compat.dll
    94208 C:\Windows\System32\l2nacp.dll
    94208 C:\Windows\System32\Midi2.UMP2BSTransform.dll
    94208 C:\Windows\System32\Windows.Internal.UI.BioEnrollment.ProxyStub.dll
    94208 C:\Windows\System32\windows.internal.shellcommon.AppResolverModal.dll
    94208 C:\Windows\System32\WordBreakers.dll
    94208 C:\Windows\System32\dot3cfg.dll
    94208 C:\Windows\System32\windows.internal.shellcommon.TokenBrokerModal.dll
    94208 C:\Windows\System32\PimIndexMaintenanceClient.dll
    94208 C:\Windows\System32\XboxGipRadioManager.dll
    94208 C:\Windows\System32\WaaSMedicSvc.dll
    94208 C:\Windows\System32\fvecerts.dll
    94208 C:\Windows\System32\radarrs.dll
    94208 C:\Windows\System32\fthsvc.dll
    94208 C:\Windows\System32\ndadmin.exe
    94208 C:\Windows\System32\EASPolicyManagerBrokerHost.exe
    94208 C:\Windows\System32\DeviceProperties.exe
    94208 C:\Windows\System32\pngfilt.dll
    94208 C:\Windows\System32\Windows.WARP.JITService.exe
    94208 C:\Windows\System32\ncobjapi.dll
    93702 C:\Windows\System32\SubRange.uce
    92746 C:\Windows\System32\services.msc
    92384 C:\Windows\System32\CastSrv.exe
    92376 C:\Windows\System32\PasswordOnWakeSettingFlyout.exe
    92352 C:\Windows\System32\umpdc.dll
    92280 C:\Windows\System32\ResourcePolicyClient.dll
    92192 C:\Windows\System32\tar.exe
    91776 C:\Windows\System32\msvcp140d_atomic_wait.dll
    91568 C:\Windows\System32\vmmsprox.dll
    91552 C:\Windows\System32\kd_02_15b3.dll
    91544 C:\Windows\System32\vmictimeprovider.dll
    91520 C:\Windows\System32\TapiMigPlugin.dll
    91456 C:\Windows\System32\EdgeResetPlugin.dll
    90112 C:\Windows\System32\Windows.Graphics.Printing.ProtectedPrint.dll
    90112 C:\Windows\System32\rasmbmgr.dll
    90112 C:\Windows\System32\Windows.System.Profile.SystemId.dll
    90112 C:\Windows\System32\ddp_ps.dll
    90112 C:\Windows\System32\inetmib1.dll
    90112 C:\Windows\System32\Windows.WARP.JITService.dll
    90112 C:\Windows\System32\MusUpdateHandlers.dll
    90112 C:\Windows\System32\SortWindows62.dll
    90112 C:\Windows\System32\dtsh.dll
    90112 C:\Windows\System32\srmlib.dll
    90112 C:\Windows\System32\networkitemfactory.dll
    90112 C:\Windows\System32\SyncProxy.dll
    90112 C:\Windows\System32\DevQueryBroker.dll
    90112 C:\Windows\System32\BitsProxy.dll
    90112 C:\Windows\System32\blb_ps.dll
    90112 C:\Windows\System32\UsbTask.dll
    90112 C:\Windows\System32\SortWindows64.dll
    90112 C:\Windows\System32\SortWindows63.dll
    90112 C:\Windows\System32\CleanPCCSP.dll
    90112 C:\Windows\System32\WindowsBackupAndRestoreCSP.dll
    90112 C:\Windows\System32\devrtl.dll
    90112 C:\Windows\System32\MdmDiagnosticsTool.exe
    90112 C:\Windows\System32\InprocLogger.dll
    90112 C:\Windows\System32\ThumbnailExtractionHost.exe
    90112 C:\Windows\System32\threadpoolwinrt.dll
    90112 C:\Windows\System32\hcproviders.dll
    90112 C:\Windows\System32\WPDShServiceObj.dll
    90112 C:\Windows\System32\BWContextHandler.dll
    90112 C:\Windows\System32\AssignedAccessRuntime.dll
    90112 C:\Windows\System32\HelpPaneProxy.dll
    90112 C:\Windows\System32\PrintPlatformConfig.dll
    90112 C:\Windows\System32\winsrv.dll
    90112 C:\Windows\System32\Windows.Internal.WaaSMedicDocked.dll
    90112 C:\Windows\System32\takeown.exe
    90112 C:\Windows\System32\TabbtnEx.dll
    90112 C:\Windows\System32\AcWinRT.dll
    90112 C:\Windows\System32\MSAlacEncoder.dll
    90112 C:\Windows\System32\HanjaDS.dll
    90112 C:\Windows\System32\findnetprinters.dll
    90112 C:\Windows\System32\regsvr32.exe
    90112 C:\Windows\System32\PortableDeviceConnectApi.dll
    90112 C:\Windows\System32\cellulardatacapabilityhandler.dll
    90112 C:\Windows\System32\wifidatacapabilityhandler.dll
    90112 C:\Windows\System32\umpodev.dll
    90112 C:\Windows\System32\pnppolicy.dll
    90112 C:\Windows\System32\AuditPolicyGPInterop.dll
    90112 C:\Windows\System32\InputController.dll
    90112 C:\Windows\System32\p9rdrservice.dll
    90112 C:\Windows\System32\wsdchngr.dll
    90112 C:\Windows\System32\MsRdpWebAccess.dll
    90112 C:\Windows\System32\WSDScanProxy.dll
    90112 C:\Windows\System32\ProvSysprep.dll
    90112 C:\Windows\System32\browcli.dll
    90112 C:\Windows\System32\wshbth.dll
    89761 C:\Windows\System32\DiskSnapshot.conf
    89473 C:\Windows\System32\NetSetupMig.log
    89240 C:\Windows\System32\vfcompat.dll
    88272 C:\Windows\System32\cryptdll.dll
    88248 C:\Windows\System32\msasn1.dll
    88232 C:\Windows\System32\svchost.exe
    87496 C:\Windows\System32\kdusb.dll
    87472 C:\Windows\System32\kd_0C_8086.dll
    87456 C:\Windows\System32\AuditSettingsProvider.dll
    87456 C:\Windows\System32\KeyboardFilterShim.dll
    87424 C:\Windows\System32\kdstub.dll
    87424 C:\Windows\System32\microsoft-windows-mptf-events.dll
    87360 C:\Windows\System32\licenseprotection.dll
    87352 C:\Windows\System32\cmcleanup.dll
    86016 C:\Windows\System32\BthAvrcpAppSvc.dll
    86016 C:\Windows\System32\TransliterationRanker.dll
    86016 C:\Windows\System32\MLEngineStub.exe
    86016 C:\Windows\System32\CCGLaunchPad.dll
    86016 C:\Windows\System32\MoNotificationUxStub.exe
    86016 C:\Windows\System32\joinproviderol.dll
    86016 C:\Windows\System32\diskusage.exe
    86016 C:\Windows\System32\UsoClient.exe
    86016 C:\Windows\System32\sxproxy.dll
    86016 C:\Windows\System32\MsftOemDllIgneous.dll
    86016 C:\Windows\System32\BlbEvents.dll
    86016 C:\Windows\System32\ms3dthumbnailprovider.dll
    86016 C:\Windows\System32\umpo-overrides.dll
    86016 C:\Windows\System32\tokenbinding.dll
    86016 C:\Windows\System32\provlaunch.exe
    86016 C:\Windows\System32\LaunchWinApp.exe
    86016 C:\Windows\System32\SebBackgroundManagerPolicy.dll
    86016 C:\Windows\System32\unlodctr.exe
    86016 C:\Windows\System32\CspProxy.dll
    86016 C:\Windows\System32\hgsclientplugin.dll
    86016 C:\Windows\System32\setx.exe
    86016 C:\Windows\System32\fwcfg.dll
    86016 C:\Windows\System32\ftp.exe
    86016 C:\Windows\System32\SetNetworkLocation.dll
    86016 C:\Windows\System32\WABSyncProvider.dll
    86016 C:\Windows\System32\perfts.dll
    86016 C:\Windows\System32\keymgr.dll
    86016 C:\Windows\System32\fhsrchph.dll
    86016 C:\Windows\System32\gpupdate.exe
    86016 C:\Windows\System32\wslconfig.exe
    86016 C:\Windows\System32\AxInstUI.exe
    86016 C:\Windows\System32\BdeUISrv.exe
    86016 C:\Windows\System32\windows.applicationmodel.conversationalagent.internal.proxystub...
    86016 C:\Windows\System32\srumapi.dll
    86016 C:\Windows\System32\Microsoft.Data.UsageAndQualityInsights.MaintenanceTask.exe
    86016 C:\Windows\System32\bash.exe
    86016 C:\Windows\System32\mfh263enc.dll
    86016 C:\Windows\System32\stclient.dll
    86016 C:\Windows\System32\dssec.dll
    86016 C:\Windows\System32\WindowsActionDialog.exe
    86016 C:\Windows\System32\DocumentPerformanceEvents.dll
    86016 C:\Windows\System32\Windows.Globalization.Fontgroups.dll
    84136 C:\Windows\System32\pfclient.dll
    84120 C:\Windows\System32\winrnr.dll
    84104 C:\Windows\System32\SFAPE.dll
    84096 C:\Windows\System32\lsass.exe
    84080 C:\Windows\System32\vmbuspipe.dll
    83968 C:\Windows\System32\Microsoft.Uev.SyncController.exe
    83384 C:\Windows\System32\mspatcha.dll
    83360 C:\Windows\System32\kd_02_1969.dll
    83352 C:\Windows\System32\NAPCRYPT.DLL
    83248 C:\Windows\System32\vbisurf.ax
    81920 C:\Windows\System32\g711codc.ax
    81920 C:\Windows\System32\Windows.Internal.SecurityMitigationsBroker.dll
    81920 C:\Windows\System32\FontGlyphAnimator.dll
    81920 C:\Windows\System32\iaspolcy.dll
    81920 C:\Windows\System32\DialogBlockerProc.dll
    81920 C:\Windows\System32\fhtask.dll
    81920 C:\Windows\System32\InputViewExperience.dll
    81920 C:\Windows\System32\dswave.dll
    81920 C:\Windows\System32\SrTasks.exe
    81920 C:\Windows\System32\hhsetup.dll
    81920 C:\Windows\System32\imgutil.dll
    81920 C:\Windows\System32\inetppui.dll
    81920 C:\Windows\System32\hdwwiz.exe
    81920 C:\Windows\System32\fdPnp.dll
    81920 C:\Windows\System32\fdProxy.dll
    81920 C:\Windows\System32\execmodelproxy.dll
    81920 C:\Windows\System32\Windows.System.Profile.SystemManufacturers.dll
    81920 C:\Windows\System32\SystemSupportInfo.dll
    81920 C:\Windows\System32\typeperf.exe
    81920 C:\Windows\System32\MSAlacDecoder.dll
    81920 C:\Windows\System32\cmutil.dll
    81920 C:\Windows\System32\MultiDigiMon.exe
    81920 C:\Windows\System32\cmgrcspps.dll
    81920 C:\Windows\System32\LogonUI.exe
    81920 C:\Windows\System32\msports.dll
    81920 C:\Windows\System32\RdpSa.exe
    81920 C:\Windows\System32\atmlib.dll
    81920 C:\Windows\System32\MicrosoftEdgeSH.exe
    81920 C:\Windows\System32\CspCellularSettings.dll
    81920 C:\Windows\System32\iyuv_32.dll
    81920 C:\Windows\System32\net.exe
    81920 C:\Windows\System32\vpnikeapi.dll
    81920 C:\Windows\System32\bderepair.dll
    81920 C:\Windows\System32\mdmpostprocessevaluator.dll
    81920 C:\Windows\System32\DialogBlockingManager.dll
    81920 C:\Windows\System32\NfcRadioMedia.dll
    81920 C:\Windows\System32\PNPXAssocPrx.dll
    81920 C:\Windows\System32\mapstoasttask.dll
    81920 C:\Windows\System32\coredpussvr.exe
    81920 C:\Windows\System32\UsbPmApi.dll
    81920 C:\Windows\System32\mydocs.dll
    81870 C:\Windows\System32\normidna.nls
    80240 C:\Windows\System32\GameInputSvc.exe
    80008 C:\Windows\System32\mfc140fra.dll
    79976 C:\Windows\System32\HdcpHandler.dll
    79976 C:\Windows\System32\mfc140deu.dll
    79894 C:\Windows\System32\ctac.json
    79348 C:\Windows\System32\normnfkc.nls
    79272 C:\Windows\System32\AppInstallerBackgroundUpdate.exe
    79264 C:\Windows\System32\smphost.dll
    79248 C:\Windows\System32\wtdccm.dll
    78952 C:\Windows\System32\mfc140esn.dll
    77952 C:\Windows\System32\mfc140ita.dll
    77824 C:\Windows\System32\mapsupdatetask.dll
    77824 C:\Windows\System32\TokenBrokerCookies.exe
    77824 C:\Windows\System32\rrinstaller.exe
    77824 C:\Windows\System32\fhcleanup.dll
    77824 C:\Windows\System32\cipher.exe
    77824 C:\Windows\System32\vdsldr.exe
    77824 C:\Windows\System32\Windows.Networking.XboxLive.ProxyStub.dll
    77824 C:\Windows\System32\PnPUnattend.exe
    77824 C:\Windows\System32\nci.dll
    77824 C:\Windows\System32\relog.exe
    77824 C:\Windows\System32\Windows.System.Diagnostics.Telemetry.PlatformTelemetryClient.dll
    77824 C:\Windows\System32\SCardBi.dll
    77824 C:\Windows\System32\dusmapi.dll
    77824 C:\Windows\System32\dusmtask.exe
    77824 C:\Windows\System32\IEProxyDesktop.dll
    77824 C:\Windows\System32\Windows.ApplicationModel.Store.Preview.DOSettings.dll
    77824 C:\Windows\System32\WudfSMCClassExt.dll
    77824 C:\Windows\System32\APMonUI.dll
    77824 C:\Windows\System32\mferror.dll
    77824 C:\Windows\System32\deskadp.dll
    77824 C:\Windows\System32\dsregtask.dll
    77824 C:\Windows\System32\UpgradeResultsUI.exe
    77824 C:\Windows\System32\RegCtrl.dll
    77824 C:\Windows\System32\tvratings.dll
    77824 C:\Windows\System32\vss_ps.dll
    77824 C:\Windows\System32\RoamingSecurity.dll
    77824 C:\Windows\System32\UserDataTypeHelperUtil.dll
    77824 C:\Windows\System32\dfdts.dll
    77824 C:\Windows\System32\LicenseManagerShellext.exe
    77824 C:\Windows\System32\msimtf.dll
    77824 C:\Windows\System32\PrintNotification.dll
    77824 C:\Windows\System32\LanguageComponentsInstallerComHandler.exe
    77824 C:\Windows\System32\winrs.exe
    77824 C:\Windows\System32\AppInstallerPrompt.Desktop.dll
    77824 C:\Windows\System32\EsdSip.dll
    77824 C:\Windows\System32\shrpubw.exe
    77824 C:\Windows\System32\timesync.dll
    77824 C:\Windows\System32\DFDWiz.exe
    77824 C:\Windows\System32\LockScreenContentHost.dll
    77824 C:\Windows\System32\cscapi.dll
    77824 C:\Windows\System32\SortWindows61.dll
    77824 C:\Windows\System32\sdiagnhost.exe
    77824 C:\Windows\System32\Microsoft.Uev.Office2010CustomActions.dll
    77824 C:\Windows\System32\EtwRundown.dll
    77824 C:\Windows\System32\cmdl32.exe
    77824 C:\Windows\System32\MsApoFxProxy.dll
    77824 C:\Windows\System32\rdrleakdiag.exe
    77824 C:\Windows\System32\wmiclnt.dll
    77824 C:\Windows\System32\embeddedmodesvcapi.dll
    77824 C:\Windows\System32\ConnectionAttributionApi.dll
    77824 C:\Windows\System32\hidserv.dll
    76176 C:\Windows\System32\mscories.dll
    76060 C:\Windows\System32\xpsrchvw.xml
    75856 C:\Windows\System32\mfc140rus.dll
    75840 C:\Windows\System32\iri.dll
    75840 C:\Windows\System32\utildll.dll
    75840 C:\Windows\System32\mfpmp.exe
    75840 C:\Windows\System32\UserAccountBroker.exe
    75832 C:\Windows\System32\LockScreenContentServer.exe
    75184 C:\Windows\System32\kdcom.dll
    75176 C:\Windows\System32\SysResetErr.exe
    75168 C:\Windows\System32\ucsvc.exe
    75168 C:\Windows\System32\HvSocket.dll
    75152 C:\Windows\System32\ploptin.dll
    75136 C:\Windows\System32\vmbuspiper.dll
    73728 C:\Windows\System32\PSModuleDiscoveryProvider.dll
    73728 C:\Windows\System32\kmddsp.tsp
    73728 C:\Windows\System32\TaskSchdPS.dll
    73728 C:\Windows\System32\ComputerDefaults.exe
    73728 C:\Windows\System32\SecEdit.exe
    73728 C:\Windows\System32\werdiagcontroller.dll
    73728 C:\Windows\System32\PeerDistAD.dll
    73728 C:\Windows\System32\xcopy.exe
    73728 C:\Windows\System32\perfnet.dll
    73728 C:\Windows\System32\odbcbcp.dll
    73728 C:\Windows\System32\sxshared.dll
    73728 C:\Windows\System32\ApxSvc.dll
    73728 C:\Windows\System32\expand.exe
    73728 C:\Windows\System32\iernonce.dll
    73728 C:\Windows\System32\ConnectedAccountState.dll
    73728 C:\Windows\System32\UserDataLanguageUtil.dll
    73728 C:\Windows\System32\iscsicli.exe
    73728 C:\Windows\System32\signdrv.dll
    73728 C:\Windows\System32\OnDemandBrokerClient.dll
    73728 C:\Windows\System32\compact.exe
    73728 C:\Windows\System32\dmintf.dll
    73728 C:\Windows\System32\certCredProvider.dll
    73728 C:\Windows\System32\proquota.exe
    73728 C:\Windows\System32\iesysprep.dll
    73728 C:\Windows\System32\userinitext.dll
    73728 C:\Windows\System32\ddrawex.dll
    73728 C:\Windows\System32\enrollmentapi.dll
    73728 C:\Windows\System32\ErrorDetailsCore.dll
    73728 C:\Windows\System32\lfsvc.dll
    73728 C:\Windows\System32\msobjs.dll
    73728 C:\Windows\System32\rdpcredentialprovider.dll
    73728 C:\Windows\System32\sscore.dll
    73728 C:\Windows\System32\msauserext.dll
    73728 C:\Windows\System32\upnpcont.exe
    73728 C:\Windows\System32\Windows.UI.Shell.dll
    73728 C:\Windows\System32\dmocx.dll
    73728 C:\Windows\System32\DragDropExperienceDataExchangeDelegated.dll
    73728 C:\Windows\System32\dsauth.dll
    73728 C:\Windows\System32\ustprov.dll
    73728 C:\Windows\System32\Windows.Devices.Printers.Extensions.dll
    73728 C:\Windows\System32\sberes.dll
    73728 C:\Windows\System32\forfiles.exe
    73728 C:\Windows\System32\fodhelper.exe
    73728 C:\Windows\System32\DesktopShellAppStateContract.dll
    73728 C:\Windows\System32\mcicda.dll
    73728 C:\Windows\System32\RotMgr.dll
    73728 C:\Windows\System32\Microsoft.Uev.EventLogMessages.dll
    73728 C:\Windows\System32\Magnification.dll
    73728 C:\Windows\System32\docprop.dll
    73728 C:\Windows\System32\SortServer2003Compat.dll
    73728 C:\Windows\System32\pid.dll
    73728 C:\Windows\System32\cmintegrator.dll
    73728 C:\Windows\System32\perfproc.dll
    73728 C:\Windows\System32\MsiCofire.dll
    73114 C:\Windows\System32\normnfkd.nls
    71720 C:\Windows\System32\winnsi.dll
    71712 C:\Windows\System32\msgsm32.acm
    71704 C:\Windows\System32\DiagnosticDataSettings.dll
    71696 C:\Windows\System32\whhelper.dll
    71624 C:\Windows\System32\vmplatformca.exe
    71600 C:\Windows\System32\DDORes.dll
    71168 C:\Windows\System32\Microsoft.Uev.Common.dll
    71112 C:\Windows\System32\kd_02_10df.dll
    71088 C:\Windows\System32\kd_02_1137.dll
    71088 C:\Windows\System32\NvAgent.dll
    71072 C:\Windows\System32\SyncAppvPublishingServer.exe
    71072 C:\Windows\System32\kd_02_19a2.dll
    71056 C:\Windows\System32\wininitext.dll
    70976 C:\Windows\System32\vidcap.ax
    70224 C:\Windows\System32\mfc140enu.dll
    69788 C:\Windows\System32\SmallRoom.bin
    69632 C:\Windows\System32\CheckNetIsolation.exe
    69632 C:\Windows\System32\notificationplatformcomponent.dll
    69632 C:\Windows\System32\winbioext.dll
    69632 C:\Windows\System32\mfvfw.dll
    69632 C:\Windows\System32\cmdext.dll
    69632 C:\Windows\System32\EcoScoreTask.dll
    69632 C:\Windows\System32\perfos.dll
    69632 C:\Windows\System32\AutomaticAppSignInPolicy.dll
    69632 C:\Windows\System32\SyncHost.exe
    69632 C:\Windows\System32\WcnNetsh.dll
    69632 C:\Windows\System32\win32kns.sys
    69632 C:\Windows\System32\lxutil.dll
    69632 C:\Windows\System32\WppRecorderUM.dll
    69632 C:\Windows\System32\dialer.exe
    69632 C:\Windows\System32\tpmcompc.dll
    69632 C:\Windows\System32\format.com
    69632 C:\Windows\System32\bthudtask.exe
    69632 C:\Windows\System32\regini.exe
    69632 C:\Windows\System32\mdmlocalmanagement.dll
    69632 C:\Windows\System32\WorkFoldersRes.dll
    69632 C:\Windows\System32\NETSTAT.EXE
    69632 C:\Windows\System32\WalletBackgroundServiceProxy.dll
    69632 C:\Windows\System32\windows.internal.shellcommon.FilePickerExperienceMEM.dll
    69632 C:\Windows\System32\Windows.Internal.ShellCommon.PrintExperience.dll
    69632 C:\Windows\System32\RacEngn.dll
    69632 C:\Windows\System32\Netplwiz.exe
    69632 C:\Windows\System32\deskmon.dll
    69632 C:\Windows\System32\eventcreate.exe
    69632 C:\Windows\System32\wsmprovhost.exe
    69632 C:\Windows\System32\WindowsUpdateElevatedInstaller.exe
    69632 C:\Windows\System32\ddodiag.exe
    69632 C:\Windows\System32\WsmRes.dll
    69632 C:\Windows\System32\traffic.dll
    69632 C:\Windows\System32\PackagedCWALauncher.exe
    69632 C:\Windows\System32\UserDataSource.exe
    69632 C:\Windows\System32\tlscsp.dll
    69632 C:\Windows\System32\dmprocessxmlfiltered.dll
    69632 C:\Windows\System32\catsrvps.dll
    69632 C:\Windows\System32\perfdisk.dll
    69632 C:\Windows\System32\wsplib.dll
    69632 C:\Windows\System32\ctfmon.exe
    69632 C:\Windows\System32\wfdprov.dll
    69632 C:\Windows\System32\AdaptiveCards.dll
    69632 C:\Windows\System32\Websocket.dll
    69632 C:\Windows\System32\uiomapapi.dll
    69632 C:\Windows\System32\UIMgrBroker.exe
    69632 C:\Windows\System32\wmdmlog.dll
    69632 C:\Windows\System32\hidphone.tsp
    67608 C:\Windows\System32\DolbyDecMFT_redirect.dll
    67592 C:\Windows\System32\MSVP9DEC.dll
    67592 C:\Windows\System32\imaadp32.acm
    67584 C:\Windows\System32\SfSEnclave.dll
    67576 C:\Windows\System32\MSVPXENC.dll
    67568 C:\Windows\System32\reguwpapi.dll
    67544 C:\Windows\System32\SystemSettingsRemoveDevice.exe
    67488 C:\Windows\System32\IpNatHlpClient.dll
    67472 C:\Windows\System32\msdmo.dll
    67016 C:\Windows\System32\browser_broker.exe
    66968 C:\Windows\System32\cfmifs.dll
    66960 C:\Windows\System32\utcapi.dll
    66864 C:\Windows\System32\KeyboardFilterCore.dll
    66594 C:\Windows\System32\C_874.NLS
    66594 C:\Windows\System32\C_855.NLS
    66594 C:\Windows\System32\C_869.NLS
    66594 C:\Windows\System32\C_852.NLS
    66594 C:\Windows\System32\C_737.NLS
    66594 C:\Windows\System32\C_720.NLS
    66594 C:\Windows\System32\C_850.NLS
    66594 C:\Windows\System32\C_775.NLS
    66594 C:\Windows\System32\C_861.NLS
    66594 C:\Windows\System32\C_862.NLS
    66594 C:\Windows\System32\C_858.NLS
    66594 C:\Windows\System32\C_860.NLS
    66594 C:\Windows\System32\C_863.NLS
    66594 C:\Windows\System32\C_865.NLS
    66594 C:\Windows\System32\C_866.NLS
    66594 C:\Windows\System32\C_857.NLS
    66594 C:\Windows\System32\C_864.NLS
    66594 C:\Windows\System32\C_437.NLS
    66082 C:\Windows\System32\C_28599.NLS
    66082 C:\Windows\System32\C_20866.NLS
    66082 C:\Windows\System32\C_1148.NLS
    66082 C:\Windows\System32\C_20838.NLS
    66082 C:\Windows\System32\C_28594.NLS
    66082 C:\Windows\System32\C_21025.NLS
    66082 C:\Windows\System32\C_1026.NLS
    66082 C:\Windows\System32\C_28595.NLS
    66082 C:\Windows\System32\c_28603.nls
    66082 C:\Windows\System32\C_20871.NLS
    66082 C:\Windows\System32\C_28598.NLS
    66082 C:\Windows\System32\C_10079.NLS
    66082 C:\Windows\System32\C_10017.NLS
    66082 C:\Windows\System32\C_20420.NLS
    66082 C:\Windows\System32\C_20297.NLS
    66082 C:\Windows\System32\C_10029.NLS
    66082 C:\Windows\System32\C_10081.NLS
    66082 C:\Windows\System32\C_20424.NLS
    66082 C:\Windows\System32\C_20833.NLS
    66082 C:\Windows\System32\C_10082.NLS
    66082 C:\Windows\System32\C_10005.NLS
    66082 C:\Windows\System32\C_20423.NLS
    66082 C:\Windows\System32\C_28597.NLS
    66082 C:\Windows\System32\C_10021.NLS
    66082 C:\Windows\System32\C_1145.NLS
    66082 C:\Windows\System32\C_10004.NLS
    66082 C:\Windows\System32\C_1146.NLS
    66082 C:\Windows\System32\C_28596.NLS
    66082 C:\Windows\System32\C_500.NLS
    66082 C:\Windows\System32\C_1143.NLS
    66082 C:\Windows\System32\C_1144.NLS
    66082 C:\Windows\System32\C_1142.NLS
    66082 C:\Windows\System32\C_708.NLS
    66082 C:\Windows\System32\C_20905.NLS
    66082 C:\Windows\System32\C_10000.NLS
    66082 C:\Windows\System32\C_20880.NLS
    66082 C:\Windows\System32\C_28605.NLS
    66082 C:\Windows\System32\C_1147.NLS
    66082 C:\Windows\System32\C_1047.NLS
    66082 C:\Windows\System32\C_20924.NLS
    66082 C:\Windows\System32\C_1141.NLS
    66082 C:\Windows\System32\C_1140.NLS
    66082 C:\Windows\System32\C_21027.NLS
    66082 C:\Windows\System32\C_037.NLS
    66082 C:\Windows\System32\C_1252.NLS
    66082 C:\Windows\System32\C_1254.NLS
    66082 C:\Windows\System32\C_21866.NLS
    66082 C:\Windows\System32\C_10007.NLS
    66082 C:\Windows\System32\C_20277.NLS
    66082 C:\Windows\System32\C_20278.NLS
    66082 C:\Windows\System32\C_1251.NLS
    66082 C:\Windows\System32\C_870.NLS
    66082 C:\Windows\System32\C_28593.NLS
    66082 C:\Windows\System32\C_20107.NLS
    66082 C:\Windows\System32\C_20108.NLS
    66082 C:\Windows\System32\C_20269.NLS
    66082 C:\Windows\System32\C_10006.NLS
    66082 C:\Windows\System32\C_20127.NLS
    66082 C:\Windows\System32\C_875.NLS
    66082 C:\Windows\System32\C_28592.NLS
    66082 C:\Windows\System32\C_1253.NLS
    66082 C:\Windows\System32\C_20273.NLS
    66082 C:\Windows\System32\C_28591.NLS
    66082 C:\Windows\System32\C_1250.NLS
    66082 C:\Windows\System32\C_1258.NLS
    66082 C:\Windows\System32\C_1256.NLS
    66082 C:\Windows\System32\C_20106.NLS
    66082 C:\Windows\System32\C_1257.NLS
    66082 C:\Windows\System32\C_1149.NLS
    66082 C:\Windows\System32\C_10010.NLS
    66082 C:\Windows\System32\C_20290.NLS
    66082 C:\Windows\System32\C_20284.NLS
    66082 C:\Windows\System32\C_1255.NLS
    66082 C:\Windows\System32\C_20280.NLS
    66082 C:\Windows\System32\C_20285.NLS
    66082 C:\Windows\System32\C_20105.NLS
    65536 C:\Windows\System32\ManagedWindowsVM.ProxyStub.dll
    65536 C:\Windows\System32\CIDiag.exe
    65536 C:\Windows\System32\usocoreps.dll
    65536 C:\Windows\System32\dmcfghost.exe
    65536 C:\Windows\System32\waitfor.exe
    65536 C:\Windows\System32\winml.dll
    65536 C:\Windows\System32\findstr.exe
    65536 C:\Windows\System32\RdpSaProxy.exe
    65536 C:\Windows\System32\WpcProxyStubs.dll
    65536 C:\Windows\System32\htui.dll
    65536 C:\Windows\System32\scrnsave.scr
    65536 C:\Windows\System32\credwiz.exe
    65536 C:\Windows\System32\lsmproxy.dll
    65536 C:\Windows\System32\mciqtz32.dll
    65536 C:\Windows\System32\cmlua.dll
    65536 C:\Windows\System32\ias.dll
    65536 C:\Windows\System32\uicom.dll
    65536 C:\Windows\System32\klist.exe
    65536 C:\Windows\System32\cmcfg32.dll
    65536 C:\Windows\System32\SettingSyncDownloadHelper.dll
    65536 C:\Windows\System32\WSManHTTPConfig.exe
    65536 C:\Windows\System32\where.exe
    65536 C:\Windows\System32\XblGameSaveProxy.dll
    65536 C:\Windows\System32\ProductEnumerator.dll
    65536 C:\Windows\System32\TimeBrokerClient.dll
    65536 C:\Windows\System32\msvidc32.dll
    65536 C:\Windows\System32\ksetup.exe
    65536 C:\Windows\System32\gpprnext.dll
    65536 C:\Windows\System32\WiredNetworkCSP.dll
    65536 C:\Windows\System32\sxstrace.exe
    65536 C:\Windows\System32\ndfetw.dll
    65536 C:\Windows\System32\tzutil.exe
    65536 C:\Windows\System32\wpninprc.dll
    65536 C:\Windows\System32\UsbCApi.dll
    65536 C:\Windows\System32\irprops.cpl
    65536 C:\Windows\System32\cttunesvr.exe
    65536 C:\Windows\System32\tcpmib.dll
    65536 C:\Windows\System32\wiawow64.exe
    65536 C:\Windows\System32\cnvfat.dll
    65536 C:\Windows\System32\rasphone.exe
    65536 C:\Windows\System32\pots.dll
    65536 C:\Windows\System32\WwaExt.dll
    65536 C:\Windows\System32\MirrorDrvCompat.dll
    65536 C:\Windows\System32\MiracastInputMgr.dll
    64424 C:\Windows\System32\vfcuzz.dll
    63464 C:\Windows\System32\SecurityCenterBrokerPS.dll
    63456 C:\Windows\System32\SDFHost.dll
    63448 C:\Windows\System32\lmhsvc.dll
    63448 C:\Windows\System32\msadp32.acm
    63336 C:\Windows\System32\CameraSettingsUIHost.exe
    63336 C:\Windows\System32\netutils.dll
    63081 C:\Windows\System32\certlm.msc
    63072 C:\Windows\System32\HalExtPL080.dll
    63070 C:\Windows\System32\certmgr.msc
    63064 C:\Windows\System32\OLDEB39.tmp
    63064 C:\Windows\System32\OLDEB5A.tmp
    63064 C:\Windows\System32\HalExtIntcPseDMA.dll
    63064 C:\Windows\System32\OLDEB6A.tmp
    63064 C:\Windows\System32\HalExtIntcLpioDMA.dll
    62896 C:\Windows\System32\WDAGNetDiag.exe
    62880 C:\Windows\System32\kdhvcom.dll
    62880 C:\Windows\System32\microsoft-windows-kernel-cc-events.dll
    62880 C:\Windows\System32\BOOTVID.DLL
    62880 C:\Windows\System32\kd_02_1af4.dll
    62864 C:\Windows\System32\LocationFrameworkPS.dll
    62848 C:\Windows\System32\dhcpcmonitor.dll
    62848 C:\Windows\System32\AppVClientPS.dll
    62768 C:\Windows\System32\esimtool.exe
    61440 C:\Windows\System32\sxsstore.dll
    61440 C:\Windows\System32\BackgroundTransferHost.exe
    61440 C:\Windows\System32\shimgvw.dll
    61440 C:\Windows\System32\auditpol.exe
    61440 C:\Windows\System32\SyncInfrastructureps.dll
    61440 C:\Windows\System32\dnscacheugc.exe
    61440 C:\Windows\System32\ISM.exe
    61440 C:\Windows\System32\linkinfo.dll
    61440 C:\Windows\System32\AttestationWmiProvider.dll
    61440 C:\Windows\System32\VhfUm.dll
    61440 C:\Windows\System32\ncuprov.dll
    61440 C:\Windows\System32\hid.dll
    61440 C:\Windows\System32\snmpapi.dll
    61440 C:\Windows\System32\lpkinstall.exe
    61440 C:\Windows\System32\WsmAgent.dll
    61440 C:\Windows\System32\XblGameSaveTask.exe
    61440 C:\Windows\System32\icacls.exe
    61440 C:\Windows\System32\wlansvcpal.dll
    61440 C:\Windows\System32\encapi.dll
    61440 C:\Windows\System32\msacm32.drv
    61440 C:\Windows\System32\RdpSaUacHelper.exe
    61440 C:\Windows\System32\uwfservicingapi.dll
    61440 C:\Windows\System32\posetup.dll
    61440 C:\Windows\System32\FileAppxStreamingDataSource.dll
    61440 C:\Windows\System32\cacls.exe
    61440 C:\Windows\System32\ipconfig.exe
    61440 C:\Windows\System32\fsutilext.dll
    61440 C:\Windows\System32\WofUtil.dll
    61440 C:\Windows\System32\PlayToStatusProvider.dll
    61440 C:\Windows\System32\davhlpr.dll
    61440 C:\Windows\System32\prevhost.exe
    61440 C:\Windows\System32\extrac32.exe
    61440 C:\Windows\System32\ifmon.dll
    61440 C:\Windows\System32\DmOmaCpMo.exe
    61440 C:\Windows\System32\WcnEapAuthProxy.dll
    61440 C:\Windows\System32\SystemEventsBrokerClient.dll
    61440 C:\Windows\System32\syssetup.dll
    61440 C:\Windows\System32\FDResPub.dll
    61440 C:\Windows\System32\WcnEapPeerProxy.dll
    61440 C:\Windows\System32\witnesswmiv2provider.dll
    61440 C:\Windows\System32\DeviceDisplayStatusManager.dll
    61440 C:\Windows\System32\deploymentcsphelper.exe
    61440 C:\Windows\System32\CIWmi.dll
    61440 C:\Windows\System32\tetheringconfigsp.dll
    61440 C:\Windows\System32\nsisvc.dll
    61440 C:\Windows\System32\SrpUxNativeSnapIn.dll
    61440 C:\Windows\System32\bdeui.dll
    61440 C:\Windows\System32\IA2ComProxy.dll
    61440 C:\Windows\System32\MCCSPal.dll
    61440 C:\Windows\System32\dxpps.dll
    61440 C:\Windows\System32\autopilotdiag.dll
    61440 C:\Windows\System32\ureg.dll
    61064 C:\Windows\System32\vcruntime140_1d.dll
    60961 C:\Windows\System32\srms.dat
    60458 C:\Windows\System32\ideograf.uce
    60264 C:\Windows\System32\vfntlmless.dll
    60124 C:\Windows\System32\tcpmon.ini
    59392 C:\Windows\System32\Microsoft.Uev.ModernAppCore.dll
    59336 C:\Windows\System32\cryptbase.dll
    59312 C:\Windows\System32\fltLib.dll
    59208 C:\Windows\System32\NetworkProxyCsp.dll
    58960 C:\Windows\System32\mfc140jpn.dll
    58800 C:\Windows\System32\kdnet_uart16550.dll
    58800 C:\Windows\System32\UtilityVmSysprep.dll
    58800 C:\Windows\System32\NDKPerfCmd.exe
    58800 C:\Windows\System32\NDKPing.exe
    58784 C:\Windows\System32\kd_07_1415.dll
    58784 C:\Windows\System32\kd_02_15ad.dll
    58784 C:\Windows\System32\symcryptk.dll
    58448 C:\Windows\System32\mfc140kor.dll
    57344 C:\Windows\System32\setspn.exe
    57344 C:\Windows\System32\VaultCmd.exe
    57344 C:\Windows\System32\fhsvcctl.dll
    57344 C:\Windows\System32\winrshost.exe
    57344 C:\Windows\System32\wscisvif.dll
    57344 C:\Windows\System32\pwsso.dll
    57344 C:\Windows\System32\sysntfy.dll
    57344 C:\Windows\System32\FdDevQuery.dll
    57344 C:\Windows\System32\WaaSMedicPS.dll
    57344 C:\Windows\System32\w32topl.dll
    57344 C:\Windows\System32\d3d10_1core.dll
    57344 C:\Windows\System32\mshtmler.dll
    57344 C:\Windows\System32\tapilua.dll
    57344 C:\Windows\System32\mciseq.dll
    57344 C:\Windows\System32\sxssrv.dll
    57344 C:\Windows\System32\WindowsIoTCsp.dll
    57344 C:\Windows\System32\AzSqlExt.dll
    57344 C:\Windows\System32\d3d10core.dll
    57344 C:\Windows\System32\WPDShextAutoplay.exe
    57344 C:\Windows\System32\mode.com
    57344 C:\Windows\System32\Windows.ApplicationModel.Background.TimeBroker.dll
    57344 C:\Windows\System32\WofTasks.dll
    57344 C:\Windows\System32\UefiCsp.dll
    57344 C:\Windows\System32\MSAMRNBSink.dll
    57344 C:\Windows\System32\Apphlpdm.dll
    57344 C:\Windows\System32\BthMtpContextHandler.dll
    57344 C:\Windows\System32\shutdown.exe
    57344 C:\Windows\System32\timeout.exe
    57344 C:\Windows\System32\cofiredm.dll
    57344 C:\Windows\System32\shutdownext.dll
    57344 C:\Windows\System32\wfapigp.dll
    57344 C:\Windows\System32\shgina.dll
    57344 C:\Windows\System32\mfcsubs.dll
    57344 C:\Windows\System32\mtxdm.dll
    57344 C:\Windows\System32\pwlauncher.exe
    57344 C:\Windows\System32\choice.exe
    57344 C:\Windows\System32\RpcPing.exe
    57344 C:\Windows\System32\wksprtPS.dll
    57344 C:\Windows\System32\sdhcinst.dll
    57344 C:\Windows\System32\sspisrv.dll
    57344 C:\Windows\System32\UCConfigTask.exe
    57344 C:\Windows\System32\seclogon.dll
    57344 C:\Windows\System32\DsmUserTask.exe
    57344 C:\Windows\System32\NetEvtFwdr.exe
    57344 C:\Windows\System32\netiougc.exe
    57344 C:\Windows\System32\SEMgrPS.dll
    57344 C:\Windows\System32\clip.exe
    57344 C:\Windows\System32\wephostsvc.dll
    57344 C:\Windows\System32\wmiprop.dll
    57344 C:\Windows\System32\cscdll.dll
    57344 C:\Windows\System32\Windows.Management.Workplace.WorkplaceSettings.dll
    57344 C:\Windows\System32\iscsium.dll
    57344 C:\Windows\System32\delegatorprovider.dll
    57136 C:\Windows\System32\normnfc.nls
    55808 C:\Windows\System32\UevAppMonitor.exe
    55216 C:\Windows\System32\wow64base.dll
    55192 C:\Windows\System32\version.dll
    55184 C:\Windows\System32\dsrole.dll
    55184 C:\Windows\System32\msg711.acm
    55176 C:\Windows\System32\ztdnsapi.dll
    55168 C:\Windows\System32\avrt.dll
    55152 C:\Windows\System32\WerEnc.dll
    55152 C:\Windows\System32\camext.dll
    55152 C:\Windows\System32\ttdloader.dll
    54784 C:\Windows\System32\Microsoft.Uev.CabUtil.dll
    54704 C:\Windows\System32\wtdhost.dll
    54696 C:\Windows\System32\VmApplicationHealthMonitorProxy.dll
    54688 C:\Windows\System32\kd.dll
    54688 C:\Windows\System32\streamci.dll
    54688 C:\Windows\System32\wtdsensor.dll
    54592 C:\Windows\System32\DDACLSys.dll
    54576 C:\Windows\System32\VrdUmed.dll
    53248 C:\Windows\System32\wci.dll
    53248 C:\Windows\System32\WsdProviderUtil.dll
    53248 C:\Windows\System32\WINSRPC.DLL
    53248 C:\Windows\System32\Windows.System.RemoteDesktop.dll
    53248 C:\Windows\System32\Windows.UI.Xaml.Resources.Common.dll
    53248 C:\Windows\System32\winusb.dll
    53248 C:\Windows\System32\uniplat.dll
    53248 C:\Windows\System32\xmlprovi.dll
    53248 C:\Windows\System32\RunLegacyCPLElevated.exe
    53248 C:\Windows\System32\dispex.dll
    53248 C:\Windows\System32\schedcli.dll
    53248 C:\Windows\System32\gptext.dll
    53248 C:\Windows\System32\energytask.dll
    53248 C:\Windows\System32\dmutil.dll
    53248 C:\Windows\System32\fltMC.exe
    53248 C:\Windows\System32\DmNotificationBroker.exe
    53248 C:\Windows\System32\dmpushproxy.dll
    53248 C:\Windows\System32\cliconfg.exe
    53248 C:\Windows\System32\icmui.dll
    53248 C:\Windows\System32\cmpbk32.dll
    53248 C:\Windows\System32\shunimpl.dll
    53248 C:\Windows\System32\httpprxc.dll
    53248 C:\Windows\System32\more.com
    53248 C:\Windows\System32\secur32.dll
    53248 C:\Windows\System32\ztrace_maps.dll
    53248 C:\Windows\System32\chkdsk.exe
    53248 C:\Windows\System32\msyuv.dll
    53248 C:\Windows\System32\nlmproxy.dll
    53248 C:\Windows\System32\dsparse.dll
    53248 C:\Windows\System32\nlaapi.dll
    53248 C:\Windows\System32\pwrshsip.dll
    53248 C:\Windows\System32\odbcconf.dll
    53248 C:\Windows\System32\atlthunk.dll
    53248 C:\Windows\System32\AuthFWGP.dll
    53248 C:\Windows\System32\ProximityRtapiPal.dll
    53248 C:\Windows\System32\ExtrasXmlParser.dll
    53248 C:\Windows\System32\bootim.exe
    53248 C:\Windows\System32\ndproxystub.dll
    53248 C:\Windows\System32\Register-CimProvider.exe
    53248 C:\Windows\System32\drprov.dll
    53248 C:\Windows\System32\RefsDedupSvc.Proxy.dll
    53248 C:\Windows\System32\bi.dll
    53248 C:\Windows\System32\qwinsta.exe
    53248 C:\Windows\System32\fdWNet.dll
    53248 C:\Windows\System32\bitsperf.dll
    53248 C:\Windows\System32\DdcClaimsApi.dll
    53248 C:\Windows\System32\mciwave.dll
    53248 C:\Windows\System32\Startupscan.dll
    53248 C:\Windows\System32\licmgr10.dll
    53248 C:\Windows\System32\credssp.dll
    53248 C:\Windows\System32\lstelemetry.dll
    53248 C:\Windows\System32\elsTrans.dll
    53248 C:\Windows\System32\DefaultPrinterProvider.dll
    53248 C:\Windows\System32\cryptdlg.dll
    51544 C:\Windows\System32\microsoft.windows.softwarelogo.showdesktop.exe
    51328 C:\Windows\System32\mfc140chs.dll
    51304 C:\Windows\System32\mfc140cht.dll
    51072 C:\Windows\System32\wow64cpu.dll
    51064 C:\Windows\System32\icsunattend.exe
    51064 C:\Windows\System32\iumbase.dll
    51048 C:\Windows\System32\nsi.dll
    50960 C:\Windows\System32\sfc_os.dll
    50944 C:\Windows\System32\ksuser.dll
    50608 C:\Windows\System32\vmsifproxystub.dll
    50504 C:\Windows\System32\dllhost.exe
    50496 C:\Windows\System32\backgroundTaskHost.exe
    50442 C:\Windows\System32\normnfd.nls
    49792 C:\Windows\System32\vcruntime140_threadsd.dll
    49152 C:\Windows\System32\eventcls.dll
    49152 C:\Windows\System32\NcdProp.dll
    49152 C:\Windows\System32\NcaApi.dll
    49152 C:\Windows\System32\at.exe
    49152 C:\Windows\System32\CSystemEventsBrokerClient.dll
    49152 C:\Windows\System32\Windows.Management.Provisioning.ProxyStub.dll
    49152 C:\Windows\System32\ARP.EXE
    49152 C:\Windows\System32\tscon.exe
    49152 C:\Windows\System32\tsdiscon.exe
    49152 C:\Windows\System32\qprocess.exe
    49152 C:\Windows\System32\bridgeunattend.exe
    49152 C:\Windows\System32\msg.exe
    49152 C:\Windows\System32\tskill.exe
    49152 C:\Windows\System32\NaturalAuthClient.dll
    49152 C:\Windows\System32\fixmapi.exe
    49152 C:\Windows\System32\PaymentMediatorServiceProxy.dll
    49152 C:\Windows\System32\appidtel.exe
    49152 C:\Windows\System32\qappsrv.exe
    49152 C:\Windows\System32\quser.exe
    49152 C:\Windows\System32\osbaseln.dll
    49152 C:\Windows\System32\oflc-nz.rs
    49152 C:\Windows\System32\prxyqry.dll
    49152 C:\Windows\System32\dbnmpntw.dll
    49152 C:\Windows\System32\nlmsprep.dll
    49152 C:\Windows\System32\odbcconf.exe
    49152 C:\Windows\System32\netbtugc.exe
    49152 C:\Windows\System32\storagewmi_passthru.dll
    49152 C:\Windows\System32\easinvoker.proxystub.dll
    49152 C:\Windows\System32\netbios.dll
    49152 C:\Windows\System32\rasdial.exe
    49152 C:\Windows\System32\DscTimer.dll
    49152 C:\Windows\System32\logoff.exe
    49152 C:\Windows\System32\appidcertstorecheck.exe
    49152 C:\Windows\System32\fc.exe
    49152 C:\Windows\System32\wpnpinst.exe
    49152 C:\Windows\System32\gameux.dll
    49152 C:\Windows\System32\Direct2DDesktop.dll
    49152 C:\Windows\System32\WallpaperHost.exe
    49152 C:\Windows\System32\rwinsta.exe
    49152 C:\Windows\System32\DDOIProxy.dll
    49152 C:\Windows\System32\cmdkey.exe
    49152 C:\Windows\System32\shpafact.dll
    49152 C:\Windows\System32\chglogon.exe
    49152 C:\Windows\System32\comp.exe
    49152 C:\Windows\System32\midimap.dll
    49152 C:\Windows\System32\serwvdrv.dll
    49152 C:\Windows\System32\DevicePairingProxy.dll
    49152 C:\Windows\System32\DeviceEject.exe
    49152 C:\Windows\System32\sort.exe
    49152 C:\Windows\System32\wshcon.dll
    49152 C:\Windows\System32\wowreg32.exe
    49152 C:\Windows\System32\adhapi.dll
    49152 C:\Windows\System32\capisp.dll
    49152 C:\Windows\System32\CallButtons.ProxyStub.dll
    49152 C:\Windows\System32\srm_ps.dll
    49152 C:\Windows\System32\csrr.rs
    49152 C:\Windows\System32\slcext.dll
    49152 C:\Windows\System32\diskperf.exe
    49152 C:\Windows\System32\chgport.exe
    49152 C:\Windows\System32\mgmtapi.dll
    49152 C:\Windows\System32\calc.exe
    49152 C:\Windows\System32\ROUTE.EXE
    48768 C:\Windows\System32\msvcp140_atomic_wait.dll
    47682 C:\Windows\System32\diskmgmt.msc
    47616 C:\Windows\System32\fhuxcommon.dll
    47448 C:\Windows\System32\d3d10sdklayers.dll
    47240 C:\Windows\System32\vcruntime140_1.dll
    46936 C:\Windows\System32\prproc.exe
    46936 C:\Windows\System32\veinterop.dll
    46912 C:\Windows\System32\pacjsworker.exe
    46496 C:\Windows\System32\vmcomputeeventlog.dll
    46480 C:\Windows\System32\AppVTerminator.dll
    46310 C:\Windows\System32\OneDrive.ico
    45984 C:\Windows\System32\wuapihost.exe
    45568 C:\Windows\System32\hpzipt12.DLL
    45056 C:\Windows\System32\oleacchooks.dll
    45056 C:\Windows\System32\umdmxfrm.dll
    45056 C:\Windows\System32\ktmutil.exe
    45056 C:\Windows\System32\easconsent.dll
    45056 C:\Windows\System32\PATHPING.EXE
    45056 C:\Windows\System32\cofire.exe
    45056 C:\Windows\System32\cliconfg.rll
    45056 C:\Windows\System32\ktmw32.dll
    45056 C:\Windows\System32\msidcrl40.dll
    45056 C:\Windows\System32\nbtstat.exe
    45056 C:\Windows\System32\mrt_map.dll
    45056 C:\Windows\System32\mpnotify.exe
    45056 C:\Windows\System32\dscproxy.dll
    45056 C:\Windows\System32\McpManagementProxy.dll
    45056 C:\Windows\System32\doskey.exe
    45056 C:\Windows\System32\msiltcfg.dll
    45056 C:\Windows\System32\dmoleaututils.dll
    45056 C:\Windows\System32\muifontsetup.dll
    45056 C:\Windows\System32\chgusr.exe
    45056 C:\Windows\System32\msrle32.dll
    45056 C:\Windows\System32\convert.exe
    45056 C:\Windows\System32\chkntfs.exe
    45056 C:\Windows\System32\ntlanui2.dll
    45056 C:\Windows\System32\verclsid.exe
    45056 C:\Windows\System32\C_IS2022.DLL
    45056 C:\Windows\System32\keepaliveprovider.dll
    45056 C:\Windows\System32\mountvol.exe
    45056 C:\Windows\System32\localui.dll
    45056 C:\Windows\System32\EnterpriseAppMgmtClient.dll
    45056 C:\Windows\System32\IconCodecService.dll
    45056 C:\Windows\System32\httpprxp.dll
    45056 C:\Windows\System32\replace.exe
    45056 C:\Windows\System32\wshrm.dll
    45056 C:\Windows\System32\tcmsetup.exe
    45056 C:\Windows\System32\provdiagnostics.dll
    45056 C:\Windows\System32\wmsgapi.dll
    45056 C:\Windows\System32\tsbyuv.dll
    45056 C:\Windows\System32\serialui.dll
    45056 C:\Windows\System32\WinRTNetMUAHostServer.exe
    45056 C:\Windows\System32\rasctrs.dll
    45056 C:\Windows\System32\fdPHost.dll
    45056 C:\Windows\System32\rasautou.exe
    45056 C:\Windows\System32\rasadhlp.dll
    45056 C:\Windows\System32\wshelper.dll
    45056 C:\Windows\System32\TsUsbGDCoInstaller.dll
    45056 C:\Windows\System32\ifsutilx.dll
    45056 C:\Windows\System32\IppCommonProxy.dll
    45056 C:\Windows\System32\JavaScriptCollectionAgent.dll
    45056 C:\Windows\System32\RmClient.exe
    45056 C:\Windows\System32\grpconv.exe
    45056 C:\Windows\System32\attrib.exe
    45056 C:\Windows\System32\Windows.Graphics.Printing.Workflow.Native.dll
    45056 C:\Windows\System32\GameBarPresenceWriter.proxy.dll
    45056 C:\Windows\System32\GamePanelExternalHook.dll
    45056 C:\Windows\System32\runas.exe
    45056 C:\Windows\System32\sbservicetrigger.dll
    45056 C:\Windows\System32\wiatrace.dll
    45056 C:\Windows\System32\fpb.rs
    45056 C:\Windows\System32\winshfhc.dll
    45056 C:\Windows\System32\PING.EXE
    45056 C:\Windows\System32\tree.com
    45056 C:\Windows\System32\SensApi.dll
    45056 C:\Windows\System32\AppxStreamingDataSourcePS.dll
    45056 C:\Windows\System32\fontgroupsoverride.dll
    45056 C:\Windows\System32\pifmgr.dll
    45056 C:\Windows\System32\TimeSyncTask.dll
    45056 C:\Windows\System32\hnsproxy.dll
    44257 C:\Windows\System32\FeatureToastBulldogImg.png
    44032 C:\Windows\System32\msdxm.tlb
    43954 C:\Windows\System32\perfd00A.dat
    43566 C:\Windows\System32\rsop.msc
    43392 C:\Windows\System32\d3d10ref.dll
    42696 C:\Windows\System32\SlideToShutDown.exe
    42696 C:\Windows\System32\DefaultDeviceManager.dll
    42696 C:\Windows\System32\wshunix.dll
    42696 C:\Windows\System32\psapi.dll
    42408 C:\Windows\System32\ResetEngine.exe
    42400 C:\Windows\System32\microsoft-windows-battery-events.dll
    41984 C:\Windows\System32\UevAgentPolicyGenerator.exe
    41587 C:\Windows\System32\azman.msc
    40960 C:\Windows\System32\hgclientserviceps.dll
    40960 C:\Windows\System32\TapiUnattend.exe
    40960 C:\Windows\System32\wlidres.dll
    40960 C:\Windows\System32\VmComputeProxy.dll
    40960 C:\Windows\System32\iscsied.dll
    40960 C:\Windows\System32\LangCleanupSysprepAction.dll
    40960 C:\Windows\System32\wmcodecdspps.dll
    40960 C:\Windows\System32\SyncHostps.dll
    40960 C:\Windows\System32\la57setup.exe
    40960 C:\Windows\System32\change.exe
    40960 C:\Windows\System32\MRINFO.EXE
    40960 C:\Windows\System32\mprext.dll
    40960 C:\Windows\System32\label.exe
    40960 C:\Windows\System32\TapiSysprep.dll
    40960 C:\Windows\System32\wsock32.dll
    40960 C:\Windows\System32\mrt100.dll
    40960 C:\Windows\System32\sas.dll
    40960 C:\Windows\System32\HOSTNAME.EXE
    40960 C:\Windows\System32\Microsoft.Uev.AgentDriverEvents.dll
    40960 C:\Windows\System32\sscoreext.dll
    40960 C:\Windows\System32\TetheringIeProvider.dll
    40960 C:\Windows\System32\defragproxy.dll
    40960 C:\Windows\System32\snmptrap.exe
    40960 C:\Windows\System32\Microsoft.Management.Infrastructure.Native.Unmanaged.dll
    40960 C:\Windows\System32\declaredconfiguration.dll
    40960 C:\Windows\System32\spwinsat.dll
    40960 C:\Windows\System32\coreaudiopolicymanagerext.dll
    40960 C:\Windows\System32\wshqos.dll
    40960 C:\Windows\System32\spwmp.dll
    40960 C:\Windows\System32\dciman32.dll
    40960 C:\Windows\System32\Windows.Devices.Background.ps.dll
    40960 C:\Windows\System32\subst.exe
    40960 C:\Windows\System32\svsvc.dll
    40960 C:\Windows\System32\TieringEngineProxy.dll
    40960 C:\Windows\System32\WpPortingLibrary.dll
    40960 C:\Windows\System32\cmstplua.dll
    40960 C:\Windows\System32\Windows.Devices.Custom.ps.dll
    40960 C:\Windows\System32\MapsBtSvcProxy.dll
    40960 C:\Windows\System32\clrhost.dll
    40960 C:\Windows\System32\WSClient.dll
    40960 C:\Windows\System32\pstask.dll
    40960 C:\Windows\System32\query.exe
    40960 C:\Windows\System32\ReAgentTask.dll
    40960 C:\Windows\System32\BdeSysprep.dll
    40960 C:\Windows\System32\dvdplay.exe
    40960 C:\Windows\System32\appinfoext.dll
    40960 C:\Windows\System32\dstokenclean.exe
    40960 C:\Windows\System32\find.exe
    40960 C:\Windows\System32\finger.exe
    40960 C:\Windows\System32\FirmwareAttestationServerProxyStub.dll
    40960 C:\Windows\System32\RemotePosWorker.exe
    40960 C:\Windows\System32\recover.exe
    40960 C:\Windows\System32\regidle.dll
    40960 C:\Windows\System32\VscMgrPS.dll
    40960 C:\Windows\System32\apprepapi.dll
    40960 C:\Windows\System32\FamilySafetyExt.dll
    40960 C:\Windows\System32\pnpts.dll
    40960 C:\Windows\System32\OOBEFodSetup.exe
    40960 C:\Windows\System32\AuthHostProxy.dll
    40960 C:\Windows\System32\efsui.exe
    40960 C:\Windows\System32\pcwrun.exe
    40960 C:\Windows\System32\Windows.Media.BackgroundPlayback.exe
    40960 C:\Windows\System32\BamSettingsClient.dll
    40960 C:\Windows\System32\ProximityCommonPal.dll
    40960 C:\Windows\System32\ntvdm64.dll
    40960 C:\Windows\System32\OEMDefaultAssociations.dll
    40960 C:\Windows\System32\print.exe
    40960 C:\Windows\System32\PrinterAssociationCommonProxy.dll
    40960 C:\Windows\System32\Eap3Host.exe
    40960 C:\Windows\System32\MsixDataSourceExtensionPS.dll
    40960 C:\Windows\System32\esrb.rs
    40960 C:\Windows\System32\agentactivationruntimestarter.exe
    40960 C:\Windows\System32\dllhst3g.exe
    40960 C:\Windows\System32\dpapi.dll
    40960 C:\Windows\System32\fsavailux.exe
    40960 C:\Windows\System32\dmiso8601utils.dll
    40960 C:\Windows\System32\TRACERT.EXE
    40960 C:\Windows\System32\AcXtrnal.dll
    40960 C:\Windows\System32\acproxy.dll
    40960 C:\Windows\System32\GameChatOverlayExt.dll
    40960 C:\Windows\System32\aeevts.dll
    40960 C:\Windows\System32\cero.rs
    40960 C:\Windows\System32\reset.exe
    40960 C:\Windows\System32\MUILanguageCleanup.dll
    40960 C:\Windows\System32\TsUsbRedirectionGroupPolicyExtension.dll
    40960 C:\Windows\System32\msdtcspoffln.dll
    40960 C:\Windows\System32\browseui.dll
    40784 C:\Windows\System32\OutdoorAudioEnvironment.bin
    40072 C:\Windows\System32\msvcp140_1d.dll
    39632 C:\Windows\System32\cuzzapi.dll
    38944 C:\Windows\System32\vcruntime140_1_clr0400.dll
    38664 C:\Windows\System32\nrpsrv.dll
    38664 C:\Windows\System32\jsproxy.dll
    38648 C:\Windows\System32\iumdll.dll
    38576 C:\Windows\System32\csrss.exe
    38560 C:\Windows\System32\wshhyperv.dll
    38272 C:\Windows\System32\AppVSentinel.dll
    37488 C:\Windows\System32\vcruntime140_threads.dll
    36864 C:\Windows\System32\EasPolicyManagerBrokerPS.dll
    36864 C:\Windows\System32\KBDGRE2.DLL
    36864 C:\Windows\System32\WiaExtensionHost64.dll
    36864 C:\Windows\System32\KBDGRE1.DLL
    36864 C:\Windows\System32\KBDUS.DLL
    36864 C:\Windows\System32\dmcommandlineutils.dll
    36864 C:\Windows\System32\icuuc.dll
    36864 C:\Windows\System32\dpnhpast.dll
    36864 C:\Windows\System32\dpnet.dll
    36864 C:\Windows\System32\dpnhupnp.dll
    36864 C:\Windows\System32\dpnsvr.exe
    36864 C:\Windows\System32\InfDefaultInstall.exe
    36864 C:\Windows\System32\DeviceUxRes.dll
    36864 C:\Windows\System32\dpnlobby.dll
    36864 C:\Windows\System32\DockInterface.ProxyStub.dll
    36864 C:\Windows\System32\dpnathlp.dll
    36864 C:\Windows\System32\fdBthProxy.dll
    36864 C:\Windows\System32\dpnaddr.dll
    36864 C:\Windows\System32\Nlsdl.dll
    36864 C:\Windows\System32\NetHost.exe
    36864 C:\Windows\System32\usbperf.dll
    36864 C:\Windows\System32\UIManagerBrokerps.dll
    36864 C:\Windows\System32\panmap.dll
    36864 C:\Windows\System32\TimeDateMUICallback.dll
    36864 C:\Windows\System32\srdelayed.exe
    36864 C:\Windows\System32\mshta.exe
    36864 C:\Windows\System32\msfeedssync.exe
    36864 C:\Windows\System32\TCPSVCS.EXE
    36864 C:\Windows\System32\msiwer.dll
    36864 C:\Windows\System32\msimsg.dll
    36864 C:\Windows\System32\usk.rs
    36864 C:\Windows\System32\amsiproxy.dll
    36864 C:\Windows\System32\RemoveDeviceElevated.dll
    36864 C:\Windows\System32\winrssrv.dll
    36864 C:\Windows\System32\SensorPerformanceEvents.dll
    36864 C:\Windows\System32\setbcdlocale.dll
    36864 C:\Windows\System32\TSErrRedir.dll
    36864 C:\Windows\System32\RdpSaPs.dll
    36864 C:\Windows\System32\wscproxystub.dll
    36864 C:\Windows\System32\UIEApi.dll
    36864 C:\Windows\System32\PerceptionSimulation.ProxyStubs.dll
    36864 C:\Windows\System32\txfw32.dll
    36864 C:\Windows\System32\pstorec.dll
    36864 C:\Windows\System32\softpub.dll
    36864 C:\Windows\System32\chcp.com
    36864 C:\Windows\System32\CHxReadingStringIME.dll
    36864 C:\Windows\System32\cfmifsproxy.dll
    36864 C:\Windows\System32\d3d8thk.dll
    36864 C:\Windows\System32\CIRCoInst.dll
    36864 C:\Windows\System32\c_GSM7.DLL
    36864 C:\Windows\System32\tapiperf.dll
    36864 C:\Windows\System32\XInput9_1_0.dll
    36864 C:\Windows\System32\cob-au.rs
    36864 C:\Windows\System32\mscat32.dll
    36864 C:\Windows\System32\wsmplpxy.dll
    36864 C:\Windows\System32\LAPRXY.DLL
    35513 C:\Windows\System32\athuwbx.inf
    35408 C:\Windows\System32\msvcp140_1.dll
    35082 C:\Windows\System32\IntegratedServicesRegionPolicySet.json
    34976 C:\Windows\System32\msvcp140d_codecvt_ids.dll
    33424 C:\Windows\System32\perfd009.dat
    33000 C:\Windows\System32\NarratorControlTemplates.xml
    32768 C:\Windows\System32\icuin.dll
    32768 C:\Windows\System32\KBDKOR.DLL
    32768 C:\Windows\System32\plasrv.exe
    32768 C:\Windows\System32\dcomcnfg.exe
    32768 C:\Windows\System32\secinit.exe
    32768 C:\Windows\System32\normaliz.dll
    32768 C:\Windows\System32\acledit.dll
    32768 C:\Windows\System32\winver.exe
    32768 C:\Windows\System32\assignedaccessproviderevents.dll
    32768 C:\Windows\System32\LaunchTM.exe
    32768 C:\Windows\System32\dabapi.dll
    32768 C:\Windows\System32\Locator.exe
    32768 C:\Windows\System32\wscadminui.exe
    32768 C:\Windows\System32\shfolder.dll
    32768 C:\Windows\System32\RpcNs4.dll
    32768 C:\Windows\System32\gamestreamingext.dll
    32768 C:\Windows\System32\getuname.dll
    32768 C:\Windows\System32\rdpcfgex.dll
    32768 C:\Windows\System32\help.exe
    32768 C:\Windows\System32\C_ISCII.DLL
    32768 C:\Windows\System32\riched32.dll
    32768 C:\Windows\System32\regedt32.exe
    32768 C:\Windows\System32\mtxex.dll
    32768 C:\Windows\System32\wship6.dll
    32768 C:\Windows\System32\mssip32.dll
    32768 C:\Windows\System32\KBDCHERP.DLL
    32768 C:\Windows\System32\spnet.dll
    32768 C:\Windows\System32\nddeapi.dll
    32768 C:\Windows\System32\msrating.dll
    32768 C:\Windows\System32\msctfime.ime
    32768 C:\Windows\System32\msidle.dll
    32768 C:\Windows\System32\msdtcVSp1res.dll
    32768 C:\Windows\System32\dnsext.dll
    32768 C:\Windows\System32\WSHTCPIP.DLL
    32768 C:\Windows\System32\msimg32.dll
    32768 C:\Windows\System32\VpnSohDesktop.dll
    32768 C:\Windows\System32\KBDJPN.DLL
    32768 C:\Windows\System32\spmpm.dll
    32768 C:\Windows\System32\systray.exe
    32768 C:\Windows\System32\Windows.Shell.StartLayoutPopulationEvents.dll
    32768 C:\Windows\System32\comcat.dll
    32768 C:\Windows\System32\OskSupport.dll
    32768 C:\Windows\System32\osuninst.dll
    32768 C:\Windows\System32\iscsicpl.exe
    32768 C:\Windows\System32\iprtprio.dll
    31392 C:\Windows\System32\msvcp140_codecvt_ids.dll
    30400 C:\Windows\System32\IumSdk.dll
    30280 C:\Windows\System32\pcwum.dll
    30208 C:\Windows\System32\hpzisn12.DLL
    30136 C:\Windows\System32\setupetw.dll
    30000 C:\Windows\System32\hal.dll
    28898 C:\Windows\System32\OEMDefaultAssociations.xml
    28672 C:\Windows\System32\stdole2.tlb
    28672 C:\Windows\System32\shimeng.dll
    28672 C:\Windows\System32\KBDFRNB.DLL
    28672 C:\Windows\System32\hpzjfw64.dll
    28672 C:\Windows\System32\wmdrmsdk.dll
    28672 C:\Windows\System32\setupcl.exe
    28672 C:\Windows\System32\winnlsres.dll
    28672 C:\Windows\System32\pegi-pt.rs
    28672 C:\Windows\System32\Firewall.cpl
    28672 C:\Windows\System32\dxmasf.dll
    28672 C:\Windows\System32\DMAlertListener.ProxyStub.dll
    28672 C:\Windows\System32\enterpriseetw.dll
    28672 C:\Windows\System32\mscorier.dll
    28672 C:\Windows\System32\msdxm.ocx
    28672 C:\Windows\System32\pegi.rs
    28672 C:\Windows\System32\grb.rs
    28672 C:\Windows\System32\lpksetupproxyserv.dll
    28672 C:\Windows\System32\MinstoreEvents.dll
    28672 C:\Windows\System32\netevent.dll
    28672 C:\Windows\System32\KBDFRNA.DLL
    28672 C:\Windows\System32\nrtapi.dll
    28672 C:\Windows\System32\CoreMmRes.dll
    27192 C:\Windows\System32\aspnet_counters.dll
    26056 C:\Windows\System32\spwizres.dll
    26056 C:\Windows\System32\c28c7a4e-a619-4463-82b7-0fc9cc7187f5_HyperV-ComputeStorage.dll
    26032 C:\Windows\System32\c4d66f00-b6f0-4439-ac9b-c5ea13fe54d7_HyperV-ComputeCore.dll
    26032 C:\Windows\System32\d4d78066-e6db-44b7-b5cd-2eb82dce620c_HyperV-ComputeLegacy.dll
    26032 C:\Windows\System32\07409496-a423-4a3e-b620-2cfb01a9318d_HyperV-ComputeNetwork.dll
    26016 C:\Windows\System32\microsoft-windows-hal-events.dll
    26016 C:\Windows\System32\69fe178f-26e7-43a9-aa7d-2b616b672dde_eventlogservice.dll
    26016 C:\Windows\System32\computelibeventlog.dll
    26016 C:\Windows\System32\0ae3b998-9a38-4b72-a4c4-06849441518d_Servicing-Stack.dll
    26016 C:\Windows\System32\4545ffe2-0dc4-4df4-9d02-299ef204635e_hvsocket.dll
    26016 C:\Windows\System32\f989b52d-f928-44a3-9bf1-bf0c1da6a0d6_HyperV-DeviceVirtualizatio...
    26016 C:\Windows\System32\f1db7d81-95be-4911-935a-8ab71629112a_HyperV-IsolatedVM.dll
    25984 C:\Windows\System32\3bc29097-7317-41d3-93b9-38a48f99d48a_mssrch.dll
    25984 C:\Windows\System32\6bea57fb-8dfb-4177-9ae8-42e8b3529933_RuntimeDeviceInstall.dll
    24576 C:\Windows\System32\KBDCZ.DLL
    24576 C:\Windows\System32\KBDCZ1.DLL
    24576 C:\Windows\System32\wlanhlp.dll
    24576 C:\Windows\System32\KBDCR.DLL
    24576 C:\Windows\System32\KBDCAN.DLL
    24576 C:\Windows\System32\KBDCA.DLL
    24576 C:\Windows\System32\KBDCHER.DLL
    24576 C:\Windows\System32\KBDCMK.DLL
    24576 C:\Windows\System32\KBDBR.DLL
    24576 C:\Windows\System32\KBDCZ2.DLL
    24576 C:\Windows\System32\KBDFI1.DLL
    24576 C:\Windows\System32\KBDFI.DLL
    24576 C:\Windows\System32\KBDFO.DLL
    24576 C:\Windows\System32\KBDA3.DLL
    24576 C:\Windows\System32\HostGuardianServiceClientResources.dll
    24576 C:\Windows\System32\KBDFC.DLL
    24576 C:\Windows\System32\KBDDZO.DLL
    24576 C:\Windows\System32\KBDDA.DLL
    24576 C:\Windows\System32\KBDES.DLL
    24576 C:\Windows\System32\kbdfar.dll
    24576 C:\Windows\System32\KBDEST.DLL
    24576 C:\Windows\System32\kbd106.dll
    24576 C:\Windows\System32\kbd103.dll
    24576 C:\Windows\System32\kbd101c.dll
    24576 C:\Windows\System32\APHostRes.dll
    24576 C:\Windows\System32\KBDA2.DLL
    24576 C:\Windows\System32\kbd106n.dll
    24576 C:\Windows\System32\djctq.rs
    24576 C:\Windows\System32\f3ahvoas.dll
    24576 C:\Windows\System32\iscsilog.dll
    24576 C:\Windows\System32\kbd101b.dll
    24576 C:\Windows\System32\kbd101a.dll
    24576 C:\Windows\System32\kbd101.dll
    24576 C:\Windows\System32\KBDADLM.DLL
    24576 C:\Windows\System32\KBDBE.DLL
    24576 C:\Windows\System32\KBDBASH.DLL
    24576 C:\Windows\System32\KBDAZST.DLL
    24576 C:\Windows\System32\KBDBHC.DLL
    24576 C:\Windows\System32\KBDBGPH1.DLL
    24576 C:\Windows\System32\KBDBENE.DLL
    24576 C:\Windows\System32\kbdarmty.dll
    24576 C:\Windows\System32\kbdarmph.dll
    24576 C:\Windows\System32\KBDAL.DLL
    24576 C:\Windows\System32\KBDAZEL.DLL
    24576 C:\Windows\System32\KBDAZE.DLL
    24576 C:\Windows\System32\kbdax2.dll
    24576 C:\Windows\System32\KBDFR.DLL
    24576 C:\Windows\System32\KBDOLDIT.DLL
    24576 C:\Windows\System32\KBDOLCH.DLL
    24576 C:\Windows\System32\KBDOSM.DLL
    24576 C:\Windows\System32\KBDOSA.DLL
    24576 C:\Windows\System32\KBDNTL.DLL
    24576 C:\Windows\System32\KBDNO.DLL
    24576 C:\Windows\System32\KBDNEPR.DLL
    24576 C:\Windows\System32\KBDNSO.DLL
    24576 C:\Windows\System32\KBDNO1.DLL
    24576 C:\Windows\System32\KBDPASH.DLL
    24576 C:\Windows\System32\KBDROST.DLL
    24576 C:\Windows\System32\KBDROPR.DLL
    24576 C:\Windows\System32\KBDRU1.DLL
    24576 C:\Windows\System32\KBDRU.DLL
    24576 C:\Windows\System32\KBDRO.DLL
    24576 C:\Windows\System32\KBDPL.DLL
    24576 C:\Windows\System32\kbdphags.dll
    24576 C:\Windows\System32\KBDPO.DLL
    24576 C:\Windows\System32\KBDPL1.DLL
    24576 C:\Windows\System32\KBDLV.DLL
    24576 C:\Windows\System32\KBDLT2.DLL
    24576 C:\Windows\System32\KBDLVST.DLL
    24576 C:\Windows\System32\KBDLV1.DLL
    24576 C:\Windows\System32\KBDLT1.DLL
    24576 C:\Windows\System32\KBDLA.DLL
    24576 C:\Windows\System32\KBDKURD.DLL
    24576 C:\Windows\System32\kbdlk41a.dll
    24576 C:\Windows\System32\KBDLAO.DLL
    24576 C:\Windows\System32\KBDMACST.DLL
    24576 C:\Windows\System32\kbdnec95.dll
    24576 C:\Windows\System32\kbdnec.dll
    24576 C:\Windows\System32\kbdnecnt.dll
    24576 C:\Windows\System32\kbdnecat.dll
    24576 C:\Windows\System32\KBDNE.DLL
    24576 C:\Windows\System32\KBDMLT47.DLL
    24576 C:\Windows\System32\KBDMAORI.DLL
    24576 C:\Windows\System32\KBDMYAN.DLL
    24576 C:\Windows\System32\KBDMLT48.DLL
    24576 C:\Windows\System32\KBDRUM.DLL
    24576 C:\Windows\System32\KBDTURME.DLL
    24576 C:\Windows\System32\KBDTUQ.DLL
    24576 C:\Windows\System32\KBDUKX.DLL
    24576 C:\Windows\System32\KBDTZM.DLL
    24576 C:\Windows\System32\KBDTUF.DLL
    24576 C:\Windows\System32\KBDTIPRC.DLL
    24576 C:\Windows\System32\KBDTIFI2.DLL
    24576 C:\Windows\System32\KBDTT102.DLL
    24576 C:\Windows\System32\KBDTIPRD.DLL
    24576 C:\Windows\System32\KBDUR1.DLL
    24576 C:\Windows\System32\KBDYCL.DLL
    24576 C:\Windows\System32\KBDYCC.DLL
    24576 C:\Windows\System32\Microsoft-Windows-MapControls.dll
    24576 C:\Windows\System32\pcbp.rs
    24576 C:\Windows\System32\KBDYBA.DLL
    24576 C:\Windows\System32\prflbmsg.dll
    24576 C:\Windows\System32\KBDUSX.DLL
    24576 C:\Windows\System32\KBDYAK.DLL
    24576 C:\Windows\System32\KBDWOL.DLL
    24576 C:\Windows\System32\KBDSN1.DLL
    24576 C:\Windows\System32\KBDSMSNO.DLL
    24576 C:\Windows\System32\KBDSOREX.DLL
    24576 C:\Windows\System32\KBDSORA.DLL
    24576 C:\Windows\System32\KBDSMSFI.DLL
    24576 C:\Windows\System32\KBDSG.DLL
    24576 C:\Windows\System32\KBDSF.DLL
    24576 C:\Windows\System32\KBDSL1.DLL
    24576 C:\Windows\System32\KBDSL.DLL
    24576 C:\Windows\System32\KBDSORS1.DLL
    24576 C:\Windows\System32\KBDTAILE.DLL
    24576 C:\Windows\System32\KBDSYR2.DLL
    24576 C:\Windows\System32\KBDTIFI.DLL
    24576 C:\Windows\System32\KBDTAT.DLL
    24576 C:\Windows\System32\KBDSYR1.DLL
    24576 C:\Windows\System32\KBDSP.DLL
    24576 C:\Windows\System32\KBDSORST.DLL
    24576 C:\Windows\System32\KBDSW09.DLL
    24576 C:\Windows\System32\KBDSW.DLL
    24576 C:\Windows\System32\KBDINBEN.DLL
    24576 C:\Windows\System32\kbdgeoer.dll
    24576 C:\Windows\System32\KBDINDEV.DLL
    24576 C:\Windows\System32\KBDINGUJ.DLL
    24576 C:\Windows\System32\KBDINEN.DLL
    24576 C:\Windows\System32\kbdgeome.dll
    24576 C:\Windows\System32\KBDIC.DLL
    24576 C:\Windows\System32\KBDINASA.DLL
    24576 C:\Windows\System32\KBDINBE2.DLL
    24576 C:\Windows\System32\KBDINBE1.DLL
    24576 C:\Windows\System32\KBDINTAM.DLL
    24576 C:\Windows\System32\KBDINPUN.DLL
    24576 C:\Windows\System32\KBDINTEL.DLL
    24576 C:\Windows\System32\KBDINUK3.DLL
    24576 C:\Windows\System32\KBDINUK2.DLL
    24576 C:\Windows\System32\KBDINKAN.DLL
    24576 C:\Windows\System32\KBDINHIN.DLL
    24576 C:\Windows\System32\KBDINMAL.DLL
    24576 C:\Windows\System32\KBDINORI.DLL
    24576 C:\Windows\System32\KBDINMAR.DLL
    24576 C:\Windows\System32\KBDIBO.DLL
    24576 C:\Windows\System32\KBDGTHC.DLL
    24576 C:\Windows\System32\KBDGRLND.DLL
    24576 C:\Windows\System32\KBDHAU.DLL
    24576 C:\Windows\System32\KBDHE220.DLL
    24576 C:\Windows\System32\KBDHAW.DLL
    24576 C:\Windows\System32\kbdgeoqw.dll
    24576 C:\Windows\System32\KBDGKL.DLL
    24576 C:\Windows\System32\KBDGN.DLL
    24576 C:\Windows\System32\KBDGR1.DLL
    24576 C:\Windows\System32\KBDGR.DLL
    24576 C:\Windows\System32\KBDHELA3.DLL
    24576 C:\Windows\System32\KBDHELA2.DLL
    24576 C:\Windows\System32\KBDHEPT.DLL
    24576 C:\Windows\System32\kbdibm02.dll
    24576 C:\Windows\System32\KBDHU.DLL
    24576 C:\Windows\System32\KBDHEB.DLL
    24576 C:\Windows\System32\KBDHE319.DLL
    24576 C:\Windows\System32\kbdhebl3.dll
    24576 C:\Windows\System32\kbdgeooa.dll
    24576 C:\Windows\System32\kbdhebsi.dll
    24576 C:\Windows\System32\KBDIR.DLL
    24576 C:\Windows\System32\KBDHE.DLL
    24576 C:\Windows\System32\KBDIULAT.DLL
    24576 C:\Windows\System32\KBDJAV.DLL
    24576 C:\Windows\System32\KBDKHMR.DLL
    24576 C:\Windows\System32\KBDKNI.DLL
    24576 C:\Windows\System32\KBDGAE.DLL
    24576 C:\Windows\System32\KBDFTHRK.DLL
    24114 C:\Windows\System32\lcptr.tbl
    24006 C:\Windows\System32\gb2312.uce
    23552 C:\Windows\System32\Microsoft.Uev.Management.WmiAccess.dll
    23137 C:\Windows\System32\DrtmAuthTxt.wim
    22984 C:\Windows\System32\bopomofo.uce
    22984 C:\Windows\System32\ScriptRunner.exe
    22024 C:\Windows\System32\sfc.dll
    22024 C:\Windows\System32\rnr20.dll
    22016 C:\Windows\System32\Microsoft.Uev.Management.dll
    21920 C:\Windows\System32\uxlibres.dll
    21824 C:\Windows\System32\bootstr.dll
    21504 C:\Windows\System32\Microsoft.Uev.ModernAppData.WinRT.dll
    20480 C:\Windows\System32\KBDTAJIK.DLL
    20480 C:\Windows\System32\KBDTH1.DLL
    20480 C:\Windows\System32\KBDTH2.DLL
    20480 C:\Windows\System32\KBDTH0.DLL
    20480 C:\Windows\System32\KBDTAM99.DLL
    20480 C:\Windows\System32\KBDBUG.DLL
    20480 C:\Windows\System32\KBDBULG.DLL
    20480 C:\Windows\System32\KBDVNTC.DLL
    20480 C:\Windows\System32\KBDUSL.DLL
    20480 C:\Windows\System32\KBDBU.DLL
    20480 C:\Windows\System32\KBDUK.DLL
    20480 C:\Windows\System32\KBDDV.DLL
    20480 C:\Windows\System32\KBDUGHR.DLL
    20480 C:\Windows\System32\KBDUGHR1.DLL
    20480 C:\Windows\System32\KBDURDU.DLL
    20480 C:\Windows\System32\KBDUSA.DLL
    20480 C:\Windows\System32\KBDUR.DLL
    20480 C:\Windows\System32\appvetwstreamingux.dll
    20480 C:\Windows\System32\kbdlisus.dll
    20480 C:\Windows\System32\kbdlisub.dll
    20480 C:\Windows\System32\KBDTH3.DLL
    20480 C:\Windows\System32\KBDLT.DLL
    20480 C:\Windows\System32\KBDKYR.DLL
    20480 C:\Windows\System32\KBDDIV2.DLL
    20480 C:\Windows\System32\KBDDIV1.DLL
    20480 C:\Windows\System32\KBDUZB.DLL
    20480 C:\Windows\System32\KBDOGHAM.DLL
    20480 C:\Windows\System32\KBDMONS2.DLL
    20480 C:\Windows\System32\KBDMONST.DLL
    20480 C:\Windows\System32\KBDARMW.DLL
    20480 C:\Windows\System32\KBDGEO.DLL
    20480 C:\Windows\System32\KBDARME.DLL
    20480 C:\Windows\System32\KBDA1.DLL
    20480 C:\Windows\System32\KBDMON.DLL
    20480 C:\Windows\System32\pcaevts.dll
    20480 C:\Windows\System32\microsoft-windows-power-cad-events.dll
    20480 C:\Windows\System32\KBDMONMO.DLL
    20480 C:\Windows\System32\KBDBGPH.DLL
    20480 C:\Windows\System32\KBDKAZ.DLL
    20480 C:\Windows\System32\KBDUSR.DLL
    20480 C:\Windows\System32\KBDBLR.DLL
    20480 C:\Windows\System32\KBDIT.DLL
    20480 C:\Windows\System32\KBDHU1.DLL
    20480 C:\Windows\System32\KBDIT142.DLL
    20480 C:\Windows\System32\kbdnko.dll
    20480 C:\Windows\System32\KBDMAC.DLL
    20480 C:\Windows\System32\KBDFA.DLL
    20268 C:\Windows\System32\DeliveryOptimizationMIProv.mof
    19968 C:\Windows\System32\Microsoft.Uev.SyncCommon.dll
    19485 C:\Windows\System32\srms-apr.dat
    18944 C:\Windows\System32\Microsoft.Uev.Common.WinRT.dll
    18944 C:\Windows\System32\amcompat.tlb
    18414 C:\Windows\System32\wpcmon.png
    17920 C:\Windows\System32\Microsoft.Uev.LocalSyncProvider.dll
    17408 C:\Windows\System32\fhuxapi.dll
    17363 C:\Windows\System32\EventViewer_EventDetails.xsl
    16940 C:\Windows\System32\FeatureToastDlpImg.png
    16756 C:\Windows\System32\scanstate.log
    16740 C:\Windows\System32\ShiftJIS.uce
    16384 C:\Windows\System32\UserDataAccessRes.dll
    16384 C:\Windows\System32\Microsoft-Windows-MosHost.dll
    16384 C:\Windows\System32\BrokerFileDialog.dat
    16384 C:\Windows\System32\microsoft-windows-storage-tiering-events.dll
    16384 C:\Windows\System32\rendezvousSession.tlb
    16384 C:\Windows\System32\Windows.Management.SecureAssessment.Diagnostics.dll
    16384 C:\Windows\System32\simpdata.tlb
    16384 C:\Windows\System32\MsraLegacy.tlb
    16384 C:\Windows\System32\stdole32.tlb
    15360 C:\Windows\System32\Microsoft.Windows.Storage.Core.dll
    14848 C:\Windows\System32\Microsoft.Windows.Storage.StorageBusCache.dll
    14791 C:\Windows\System32\@edptoastimage.png
    14336 C:\Windows\System32\UevTemplateBaselineGenerator.exe
    14336 C:\Windows\System32\Microsoft.Uev.ModernSync.dll
    13091 C:\Windows\System32\DevModeRunAsUserConfig.msc
    12876 C:\Windows\System32\korean.uce
    12856 C:\Windows\System32\msvcr100_clr0400.dll
    12650 C:\Windows\System32\HPCDLOG.LOG
    12288 C:\Windows\System32\WEB.rs
    12288 C:\Windows\System32\TelephonyInteractiveUserRes.dll
    12288 C:\Windows\System32\iologmsg.dll
    12288 C:\Windows\System32\msprivs.dll
    12288 C:\Windows\System32\blbres.dll
    12288 C:\Windows\System32\comres.dll
    12288 C:\Windows\System32\microsoft-windows-processor-aggregator-events.dll
    12288 C:\Windows\System32\SensorsCpl.dll
    12288 C:\Windows\System32\ws2help.dll
    12288 C:\Windows\System32\Microsoft-WindowsPhone-SEManagementProvider.dll
    12288 C:\Windows\System32\tier2punctuations.dll
    12288 C:\Windows\System32\mmres.dll
    12288 C:\Windows\System32\imagesp1.dll
    12288 C:\Windows\System32\imageres.dll
    12288 C:\Windows\System32\msxml3r.dll
    12288 C:\Windows\System32\icmp.dll
    12288 C:\Windows\System32\moricons.dll
    12288 C:\Windows\System32\SrEvents.dll
    12288 C:\Windows\System32\bridgeres.dll
    12288 C:\Windows\System32\msidntld.dll
    12288 C:\Windows\System32\msafd.dll
    12288 C:\Windows\System32\msdatsrc.tlb
    12288 C:\Windows\System32\msxml6r.dll
    12288 C:\Windows\System32\wmploc.DLL
    12288 C:\Windows\System32\TpmCertResources.dll
    12288 C:\Windows\System32\dmdskres2.dll
    12288 C:\Windows\System32\tzsyncres.dll
    12288 C:\Windows\System32\asferror.dll
    12288 C:\Windows\System32\tapiui.dll
    12288 C:\Windows\System32\XAudio2_8.dll
    12288 C:\Windows\System32\ETWCoreUIComponentsResources.dll
    12288 C:\Windows\System32\tzres.dll
    12288 C:\Windows\System32\qedwipes.dll
    12288 C:\Windows\System32\winrsmgr.dll
    12288 C:\Windows\System32\advapi32res.dll
    12288 C:\Windows\System32\dmdskres.dll
    12288 C:\Windows\System32\defragres.dll
    12288 C:\Windows\System32\DMAppsRes.dll
    12288 C:\Windows\System32\SyncRes.dll
    12288 C:\Windows\System32\wlanutil.dll
    12288 C:\Windows\System32\MapControlStringsRes.dll
    12288 C:\Windows\System32\wmi.dll
    12288 C:\Windows\System32\oleaccrc.dll
    12288 C:\Windows\System32\wmerror.dll
    12288 C:\Windows\System32\neth.dll
    12288 C:\Windows\System32\netmsg.dll
    12288 C:\Windows\System32\security.dll
    12288 C:\Windows\System32\PhoneutilRes.dll
    12288 C:\Windows\System32\lltdres.dll
    12288 C:\Windows\System32\PhoneServiceRes.dll
    12288 C:\Windows\System32\lz32.dll
    12288 C:\Windows\System32\lpk.dll
    11776 C:\Windows\System32\UevTemplateConfigItemGenerator.exe
    11743 C:\Windows\System32\athuwbx.cat
    11292 C:\Windows\System32\srms-apr-v.dat
    11264 C:\Windows\System32\Microsoft.Uev.SmbSyncProvider.dll
    10429 C:\Windows\System32\ScavengeSpace.xml
     9926 C:\Windows\System32\l_intl.nls
     8736 C:\Windows\System32\BluetoothPairingSystemToastIcon.contrast-high.png
     8704 C:\Windows\System32\Microsoft.Uev.MonitorSyncProvider.dll
     8541 C:\Windows\System32\BluetoothPairingSystemToastIcon.png
     8495 C:\Windows\System32\BluetoothPairingSystemToastIcon.contrast-black.png
     8495 C:\Windows\System32\BluetoothPairingSystemToastIcon.contrast-white.png
     8484 C:\Windows\System32\kanji_2.uce
     8321 C:\Windows\System32\ActiveHours.png
     8192 C:\Windows\System32\settings.dat
     7680 C:\Windows\System32\Microsoft.Uev.SyncConditions.dll
     7210 C:\Windows\System32\hpatchmonTask.cmd
     7154 C:\Windows\System32\5E37410B-D6F1-471D-AE27-563CEAC0D6B2
     6948 C:\Windows\System32\kanji_1.uce
     6873 C:\Windows\System32\SecurityAndMaintenance_Error.png
     6800 C:\Windows\System32\wpcatltoast.png
     6658 C:\Windows\System32\VmFirmwareHcl Third-Party Notices.txt
     6658 C:\Windows\System32\VmFirmware Third-Party Notices.txt
     5783 C:\Windows\System32\SecurityAndMaintenance.png
     5264 C:\Windows\System32\ecoscore_config.json
     4802 C:\Windows\System32\DefaultAccountTile.png
     4675 C:\Windows\System32\wsmanconfig_schema.xml
     4488 C:\Windows\System32\ResPriHMImageList
     4488 C:\Windows\System32\ResPriHMImageListLowCost
     4488 C:\Windows\System32\ResPriImageList
     4488 C:\Windows\System32\ResPriLMImageList
     4488 C:\Windows\System32\ResPriUHMImageList
     4488 C:\Windows\System32\ResPriImageListLowCost
     4148 C:\Windows\System32\psmodulediscoveryprovider.mof
     4014 C:\Windows\System32\xwizard.dtd
     3944 C:\Windows\System32\DetailedReading-Default.xml
     3887 C:\Windows\System32\HearingAidSystemToastIcon.png
     3865 C:\Windows\System32\WwanFeatureTests.xml
     3666 C:\Windows\System32\sysprtj.sep
     3650 C:\Windows\System32\AppxProvisioning.xml
     3500 C:\Windows\System32\HearingAidSystemToastIcon.contrast-white.png
     3468 C:\Windows\System32\rootporterr.mof
     3420 C:\Windows\System32\UevCustomActionTypes.tlb
     3329 C:\Windows\System32\ieuinit.inf
     3317 C:\Windows\System32\sysprint.sep
     3235 C:\Windows\System32\hptcpmon.ini
     3176 C:\Windows\System32\@AdvancedKeySettingsNotification.png
     3103 C:\Windows\System32\mmc.exe.config
     2613 C:\Windows\System32\SecurityAndMaintenance_Alert.png
     2561 C:\Windows\System32\LowBatterySystemToastIcon.png
     2466 C:\Windows\System32\LowBatterySystemToastIcon.contrast-white.png
     2461 C:\Windows\System32\CriticallyLowBatterySystemToastIcon.png
     2428 C:\Windows\System32\WimBootCompress.ini
     2426 C:\Windows\System32\WsmTxt.xsl
     2296 C:\Windows\System32\EarbudsSystemToastIcon.png
     2293 C:\Windows\System32\CriticallyLowBatterySystemToastIcon.contrast-white.png
     2259 C:\Windows\System32\PhoneSystemToastIcon.contrast-white.png
     2193 C:\Windows\System32\EarbudsSystemToastIcon.contrast-white.png
     2044 C:\Windows\System32\DeliveryOptimizationMIProvUninstall.mof
     1969 C:\Windows\System32\PhoneSystemToastIcon.png
     1835 C:\Windows\System32\WindowsSecurityIcon.png
     1832 C:\Windows\System32\HealthSystemToastIcon.contrast-white.png
     1820 C:\Windows\System32\rasctrnm.h
     1760 C:\Windows\System32\tcpbidi.xml
     1720 C:\Windows\System32\SyncAppvPublishingServer.vbs
     1681 C:\Windows\System32\DeviceFeatureDDF.json
     1664 C:\Windows\System32\debug.log
     1660 C:\Windows\System32\HealthSystemToastIcon.png
     1613 C:\Windows\System32\RemoteSystemToastIcon.contrast-white.png
     1560 C:\Windows\System32\HeadsetSystemToastIcon.contrast-white.png
     1559 C:\Windows\System32\WsmPty.xsl
     1520 C:\Windows\System32\SpeakersSystemToastIcon.contrast-white.png
     1480 C:\Windows\System32\GameSystemToastIcon.contrast-white.png
     1460 C:\Windows\System32\HeadphoneSystemToastIcon.contrast-white.png
     1386 C:\Windows\System32\MouseSystemToastIcon.contrast-white.png
     1369 C:\Windows\System32\ThirdPartyNoticesBySHS.txt
     1320 C:\Windows\System32\BluetoothSystemToastIcon.contrast-white.png
     1284 C:\Windows\System32\InputSystemToastIcon.contrast-white.png
     1284 C:\Windows\System32\MediaSystemToastIcon.contrast-white.png
     1243 C:\Windows\System32\HandwritingSystemToastIcon.contrast-white.png
     1229 C:\Windows\System32\BluetoothSystemToastIcon.png
     1215 C:\Windows\System32\@WindowsHelloFaceToastIconRejuv.png
     1196 C:\Windows\System32\HeadsetSystemToastIcon.png
     1132 C:\Windows\System32\GameSystemToastIcon.png
     1124 C:\Windows\System32\RemoteSystemToastIcon.png
     1114 C:\Windows\System32\HeadphoneSystemToastIcon.png
     1087 C:\Windows\System32\MouseSystemToastIcon.png
     1070 C:\Windows\System32\@VpnToastIcon.png
      917 C:\Windows\System32\InputSystemToastIcon.png
      912 C:\Windows\System32\HandwritingSystemToastIcon.png
      897 C:\Windows\System32\SpeakersSystemToastIcon.png
      874 C:\Windows\System32\manage-bde.wsf
      858 C:\Windows\System32\DefaultQuestions.json
      854 C:\Windows\System32\MediaSystemToastIcon.png
      841 C:\Windows\System32\KeyboardSystemToastIcon.contrast-white.png
      741 C:\Windows\System32\NOISE.DAT
      724 C:\Windows\System32\wpr.config.xml
      714 C:\Windows\System32\RestartManager.mof
      699 C:\Windows\System32\@optionalfeatures.png
      691 C:\Windows\System32\@WirelessDisplayToast.png
      686 C:\Windows\System32\ComputerToastIcon.contrast-white.png
      660 C:\Windows\System32\@BackgroundAccessToastIcon.png
      614 C:\Windows\System32\WdsUnattendTemplate.xml
      602 C:\Windows\System32\DisplaySystemToastIcon.contrast-white.png
      599 C:\Windows\System32\@WindowsUpdateToastIcon.contrast-white.png
      565 C:\Windows\System32\@WindowsUpdateToastIcon.png
      565 C:\Windows\System32\NdfEventView.xml
      565 C:\Windows\System32\@WindowsUpdateToastIcon.contrast-black.png
      563 C:\Windows\System32\@language_notification_icon.png
      549 C:\Windows\System32\@AutoSrToastIcon.png
      546 C:\Windows\System32\@WindowsHelloFaceToastIcon.png
      523 C:\Windows\System32\KeyboardSystemToastIcon.png
      387 C:\Windows\System32\ComputerToastIcon.png
      354 C:\Windows\System32\@StorageSenseToastIcon.png
      346 C:\Windows\System32\DisplaySystemToastIcon.png
      331 C:\Windows\System32\@WLOGO_96x96.png
      330 C:\Windows\System32\@EnrollmentToastIcon.png
      308 C:\Windows\System32\@AudioToastIcon.png
      263 C:\Windows\System32\odbcconf.rsp
      256 C:\Windows\System32\removerootporterr.mof
      232 C:\Windows\System32\@AppHelpToast.png
      215 C:\Windows\System32\AddPort.ini
      199 C:\Windows\System32\@bitlockertoastimage.png
      176 C:\Windows\System32\RestartManagerUninstall.mof
      155 C:\Windows\System32\WindowsVirtualizationUninstall.mof
      154 C:\Windows\System32\WindowsHyperVClusterUninstall.mof
      150 C:\Windows\System32\pcl.sep
      146 C:\Windows\System32\UevAppMonitor.exe.config
       51 C:\Windows\System32\pscript.sep
       50 C:\Windows\System32\BRADM10A.DAT
       33 C:\Windows\System32\winrm.cmd
          C:\Windows\System32\es-MX
          C:\Windows\System32\et-EE
          C:\Windows\System32\es-ES
          C:\Windows\System32\F12
          C:\Windows\System32\es
          C:\Windows\System32\fa-IR
          C:\Windows\System32\fi-FI
          C:\Windows\System32\fil-PH
          C:\Windows\System32\eu-ES
          C:\Windows\System32\fr-CA
          C:\Windows\System32\en-US
          C:\Windows\System32\DriverState
          C:\Windows\System32\DriverStore
          C:\Windows\System32\drivers
          C:\Windows\System32\Dism
          C:\Windows\System32\downlevel
          C:\Windows\System32\DRVSTORE
          C:\Windows\System32\en
          C:\Windows\System32\en-GB
          C:\Windows\System32\el-GR
          C:\Windows\System32\dsc
          C:\Windows\System32\DTS
          C:\Windows\System32\fr-FR
          C:\Windows\System32\zh-CN
          C:\Windows\System32\icsxml
          C:\Windows\System32\id-ID
          C:\Windows\System32\zh-TW
          C:\Windows\System32\Hydrogen
          C:\Windows\System32\ias
          C:\Windows\System32\inetsrv
          C:\Windows\System32\InputMethod
          C:\Windows\System32\Ipmi
          C:\Windows\System32\winrm
          C:\Windows\System32\IME
          C:\Windows\System32\WinMetadata
          C:\Windows\System32\hy-AM
          C:\Windows\System32\gl-ES
          C:\Windows\System32\GroupPolicyUsers
          C:\Windows\System32\gu-IN
          C:\Windows\System32\winevt
          C:\Windows\System32\ga-IE
          C:\Windows\System32\gd-GB
          C:\Windows\System32\hr-HR
          C:\Windows\System32\hu-HU
          C:\Windows\System32\HvsiSettingsProviders
          C:\Windows\System32\he-IL
          C:\Windows\System32\HealthAttestationClient
          C:\Windows\System32\hi-IN
          C:\Windows\System32\AccountHealthAssets
          C:\Windows\System32\AdvancedInstallers
          C:\Windows\System32\af-ZA
          C:\Windows\System32\1055
          C:\Windows\System32\2052
          C:\Windows\System32\3082
          C:\Windows\System32\appraiser
          C:\Windows\System32\AppV
          C:\Windows\System32\ar-SA
          C:\Windows\System32\am-ET
          C:\Windows\System32\AppLocker
          C:\Windows\System32\appmgmt
          C:\Windows\System32\1049
          C:\Windows\System32\1029
          C:\Windows\System32\1031
          C:\Windows\System32\1033
          C:\Windows\System32\%userprofile%
          C:\Windows\System32\0409
          C:\Windows\System32\1028
          C:\Windows\System32\1042
          C:\Windows\System32\1045
          C:\Windows\System32\1046
          C:\Windows\System32\1036
          C:\Windows\System32\1040
          C:\Windows\System32\1041
          C:\Windows\System32\config
          C:\Windows\System32\Configuration
          C:\Windows\System32\containers
          C:\Windows\System32\chr-CHER-US
          C:\Windows\System32\CodeIntegrity
          C:\Windows\System32\Com
          C:\Windows\System32\DDFs
          C:\Windows\System32\de-DE
          C:\Windows\System32\DiagSvcs
          C:\Windows\System32\cs-CZ
          C:\Windows\System32\cy-GB
          C:\Windows\System32\da-DK
          C:\Windows\System32\catroot2
          C:\Windows\System32\BestPractices
          C:\Windows\System32\bg-BG
          C:\Windows\System32\bn-IN
          C:\Windows\System32\as-IN
          C:\Windows\System32\az-Latn-AZ
          C:\Windows\System32\be-BY
          C:\Windows\System32\ca-ES
          C:\Windows\System32\ca-ES-valencia
          C:\Windows\System32\CatRoot
          C:\Windows\System32\Boot
          C:\Windows\System32\bs-Latn-BA
          C:\Windows\System32\Bthprops
          C:\Windows\System32\is-IS
          C:\Windows\System32\pt-BR
          C:\Windows\System32\ta-IN
          C:\Windows\System32\pt-PT
          C:\Windows\System32\Printing_Admin_Scripts
          C:\Windows\System32\ProximityToast
          C:\Windows\System32\Tasks
          C:\Windows\System32\ras
          C:\Windows\System32\RasToast
          C:\Windows\System32\Recovery
          C:\Windows\System32\qps-ploc
          C:\Windows\System32\qps-plocm
          C:\Windows\System32\quz-PE
          C:\Windows\System32\Tasks_Migrated
          C:\Windows\System32\oobe
          C:\Windows\System32\OpenSSH
          C:\Windows\System32\or-IN
          C:\Windows\System32\nn-NO
          C:\Windows\System32\Npcap
          C:\Windows\System32\Nui
          C:\Windows\System32\te-IN
          C:\Windows\System32\pl-PL
          C:\Windows\System32\PointOfService
          C:\Windows\System32\pa-IN
          C:\Windows\System32\Pbr
          C:\Windows\System32\PerceptionSimulation
          C:\Windows\System32\restore
          C:\Windows\System32\spp
          C:\Windows\System32\Sysprep
          C:\Windows\System32\sppui
          C:\Windows\System32\Speech_OneCore
          C:\Windows\System32\SystemResetPlatform
          C:\Windows\System32\spool
          C:\Windows\System32\sr-Latn-RS
          C:\Windows\System32\sru
          C:\Windows\System32\sv-SE
          C:\Windows\System32\sq-AL
          C:\Windows\System32\sr-Cyrl-BA
          C:\Windows\System32\sr-Cyrl-RS
          C:\Windows\System32\Speech
          C:\Windows\System32\SecureBootUpdates
          C:\Windows\System32\SecurityHealth
          C:\Windows\System32\setup
          C:\Windows\System32\ro-RO
          C:\Windows\System32\ru-RU
          C:\Windows\System32\ruxim
          C:\Windows\System32\SleepStudy
          C:\Windows\System32\slmgr
          C:\Windows\System32\SMI
          C:\Windows\System32\ShellExperiences
          C:\Windows\System32\sk-SK
          C:\Windows\System32\sl-SI
          C:\Windows\System32\nl-NL
          C:\Windows\System32\kok-IN
          C:\Windows\System32\lb-LU
          C:\Windows\System32\Licenses
          C:\Windows\System32\km-KH
          C:\Windows\System32\kn-IN
          C:\Windows\System32\ko-KR
          C:\Windows\System32\lt-LT
          C:\Windows\System32\lv-LV
          C:\Windows\System32\uz-Latn-UZ
          C:\Windows\System32\lo-LA
          C:\Windows\System32\LogFiles
          C:\Windows\System32\Logs
          C:\Windows\System32\vi-VN
          C:\Windows\System32\WindowsPowerShell
          C:\Windows\System32\WinBioPlugIns
          C:\Windows\System32\WinBioDatabase
          C:\Windows\System32\it-IT
          C:\Windows\System32\ja-jp
          C:\Windows\System32\ka-GE
          C:\Windows\System32\WCN
          C:\Windows\System32\kk-KZ
          C:\Windows\System32\wbem
          C:\Windows\System32\WebThreatDefSvc
          C:\Windows\System32\Keywords
          C:\Windows\System32\WDI
          C:\Windows\System32\lxss
          C:\Windows\System32\MSDRM
          C:\Windows\System32\MsDtc
          C:\Windows\System32\th-TH
          C:\Windows\System32\tr-TR
          C:\Windows\System32\MRT
          C:\Windows\System32\ms-MY
          C:\Windows\System32\NDF
          C:\Windows\System32\ne-NP
          C:\Windows\System32\networklist
          C:\Windows\System32\mt-MT
          C:\Windows\System32\MUI
          C:\Windows\System32\nb-NO
          C:\Windows\System32\mr-IN
          C:\Windows\System32\Microsoft
          C:\Windows\System32\uk-UA
          C:\Windows\System32\Microsoft-Edge-WebView
          C:\Windows\System32\ur-PK
          C:\Windows\System32\MailContactsCalendarSync
          C:\Windows\System32\mi-NZ
          C:\Windows\System32\mk-MK
          C:\Windows\System32\ml-IN
          C:\Windows\System32\tt-RU
          C:\Windows\System32\migration
          C:\Windows\System32\ug-CN
          C:\Windows\System32\migwiz
```

---

8. Muestra el tamaño y nombre completo de todos los ficheros del directorio que tengan un tamaño superior a 10MB (10000000 bytes) ordenados por tamaño.

---

Ejecutas:

```shell
Get-ChildItem C:\Windows\System32 | Where-Object Length -gt 10000000 | Sort-Object Length | Select-Object Length, FullName
```

Y veras algo asi:

```shell
PS C:\Users\HP> Get-ChildItem C:\Windows\System32 | Where-Object Length -gt 10000000 | Sort-Object Length | Select-Object Length, FullName

   Length FullName
   ------ --------
 10239544 C:\Windows\System32\directml.dll
 10572912 C:\Windows\System32\onnxruntime.dll
 10616832 C:\Windows\System32\wmp.dll
 10779040 C:\Windows\System32\UdiApiClient.dll
 11216008 C:\Windows\System32\mfc140d.dll
 11286096 C:\Windows\System32\mfc140ud.dll
 12969376 C:\Windows\System32\ntoskrnl.exe
 13993416 C:\Windows\System32\vmms.exe
 17842176 C:\Windows\System32\Windows.UI.Xaml.dll
 18124800 C:\Windows\System32\DXCaptureReplay.dll
 20211328 C:\Windows\System32\SynTPRes.dll
 24059904 C:\Windows\System32\mshtml.dll
 26005504 C:\Windows\System32\edgehtml.dll
 27958440 C:\Windows\System32\mfxplugin64_hw.dll
 36177352 C:\Windows\System32\vmfirmwarehcl.dll
 89771848 C:\Windows\System32\OneDriveSetup.exe
215625816 C:\Windows\System32\MRT.exe
```

---

9. Muestra el tamaño y nombre completo de todos los ficheros del directorio que tengan un tamaño superior a 10MB y extensión `.exe` ordenados por tamaño.

---

Ejecutas:

```shell
Get-ChildItem C:\Windows\System32 | Where-Object Length -gt 10000000 | Where-Object Extension -eq ".exe" | Sort-Object Length | Select-Object Length, FullName
```

Y veras algo asi:

```shell
PS C:\Users\HP> Get-ChildItem C:\Windows\System32 | Where-Object Length -gt 10000000 | Where-Object Extension -eq ".exe" | Sort-Object Length | Select-Object Length, FullName

   Length FullName
   ------ --------
 12969376 C:\Windows\System32\ntoskrnl.exe
 13993416 C:\Windows\System32\vmms.exe
 89771848 C:\Windows\System32\OneDriveSetup.exe
215625816 C:\Windows\System32\MRT.exe
```

---


## Ayuda para realizar la práctica

Hemos visto cómo usar el comando `Where-Object` para filtrar objetos con propiedades de tipo texto o numérico (por ejemplo, `Where-Object CPU -gt 1` o `Where-Object Name -eq "Notepad"`, sin embargo, hay propiedades que pueden tener otro tipo de datos. Dos de estos datos son los **booleanos** y los de **tipo fecha**.

### Propiedades booleanas

Las propiedades booleanas son las que pueden tener un valor de **Verdadero** o **Falso**, por ejemplo, la propiedad `Exists` del comando `Get-ChildItem`.

![alt text](image.png)
 
Cuando queremos filtrar por estas propiedades y queremos poner que un valor es verdadero o falso, no podemos poner directamente True o False, ya que el sistema las interpretará como cadenas de texto en lugar de hacerlo como valores booleanos. En estos casos, es necesario utilizar dos variables del sistema que representaremos de la forma `$True` y `$False`.

### Propiedades de tipo fecha

Otro tipo de propiedades muy común son las de **fecha y hora**, que podemos encontrar por ejemplo en la fecha de creación de un fichero.

```powershell
PS C:\> Get-ChildItem | Get-Member CreationTime


   TypeName: System.IO.DirectoryInfo

Name         MemberType Definition
----         ---------- ----------
CreationTime Property   datetime CreationTime {get;set;}
```

Aquí encontramos el mismo problema que en el caso anterior ya que si ponemos la fecha directamente la interpretará como una cadena. En este caso, hay que utilizar el comando `Get-Date` con el parámetro `-date` que convierte una fecha en modo texto a un objeto de tipo `datetime` que almacena dicha fecha.

```powershell
PS C:\> Get-Date -Date "25 de noviembre de 2014"

martes, 25 de noviembre de 2014 0:00:00
```

Pero ahora hay otro problema, ¿cómo hacemos para incluir el valor devuelto por este comando en el parámetro de otro comando? En este caso tenemos que recurrir a los paréntesis de la siguiente forma:

```powershell
PS C:\> Get-ChildItem | `
>>         Where-Object `
>>            -Property CreationTime `
>>            -gt ( Get-Date -Date "25 de noviembre de 2020")

    Directorio: C:\

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        23/11/2024     17:54                $WINDOWS.~BT
d-----        13/10/2024     20:57                AMD
d-----        23/11/2024     17:55                ESD
```


Los **paréntesis** hacen que en primer lugar se ejecute el comando que hay en su interior y, el valor devuelto por dicho comando reemplazará todo lo que hay entre paréntesis.
Hay diversas formas de indicar la fecha que se le pasa al comando `Get-Date`, tanto con fecha y hora como solo fecha. Algunos ejemplos son:
- `"2 de noviembre de 2021 10:05:00"`
- `"02/11/2021"`
- `"02/11/21 10:10:30"`
- `"2021-02-11"`

Teniendo en cuenta lo anterior, realiza los siguientes ejercicios:

10. Muestra todos los procesos que tienen el estado `Responding` puesto a `False`, es decir, todos los procesos del sistema que se hayan colgado.

---

Ejecutas:

```shell
Get-Process | Where-Object Responding -eq $False

```

Y veras algo asi:

```shell
PS C:\Users\HP> Get-Process | Where-Object Responding -eq $False

Handles  NPM(K)    PM(K)      WS(K)     CPU(s)     Id  SI ProcessName
-------  ------    -----      -----     ------     --  -- -----------
   1555      77   147512       2456       7,22   4884  28 SystemSettings
```

---

11. Muestra todos los ficheros de `C:\Windows` que hayan sido creados con fecha posterior al 15 de octubre de este año.

---

Ejecutas:

```shell
Get-ChildItem C:\Windows | Where-Object CreationTime -gt (Get-Date -Date "15/10/2025")
```

Y veras algo asi:

```shell
PS C:\Users\HP> Get-ChildItem C:\Windows | Where-Object CreationTime -gt (Get-Date -Date "15/10/2025")


    Directorio: C:\Windows


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/12/2025     12:51                CbsTemp
-a----        29/10/2025      9:56        3166568 explorer.exe
-a----        29/10/2025      9:56        1081344 HelpPane.exe
-a----        29/10/2025      9:56         585728 regedit.exe
-a----        29/10/2025      9:56         229376 splwow64.exe
-a----        29/10/2025      9:56          96768 twain_32.dll
```

---

[VOLVER A INICIO](../../../index.md)