.class Lcom/android/server/desktopmode/Shell;
.super Landroid/os/ShellCommand;
.source "Shell.java"


# instance fields
.field private mHwManager:Lcom/android/server/desktopmode/HardwareManager;

.field private mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

.field private mResolver:Landroid/content/ContentResolver;

.field private mUiManager:Lcom/android/server/desktopmode/UiManager;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/HardwareManager;)V
    .registers 5

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    iput-object p3, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    iput-object p4, p0, Lcom/android/server/desktopmode/Shell;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    return-void
.end method

.method private desktopModeSettingsCommand()I
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_21

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    :cond_21
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    sparse-switch v5, :sswitch_data_c0

    goto :goto_5f

    :sswitch_2a
    const-string v5, "clear"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    const/4 v5, 0x3

    goto :goto_60

    :sswitch_34
    const-string/jumbo v5, "list"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    const/4 v5, 0x4

    goto :goto_60

    :sswitch_3f
    const-string/jumbo v5, "put"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    const/4 v5, 0x1

    goto :goto_60

    :sswitch_4a
    const-string/jumbo v5, "get"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    move v5, v6

    goto :goto_60

    :sswitch_55
    const-string v5, "delete"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    const/4 v5, 0x2

    goto :goto_60

    :cond_5f
    :goto_5f
    move v5, v1

    :goto_60
    packed-switch v5, :pswitch_data_d6

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    goto :goto_bf

    :pswitch_67
    if-eqz v3, :cond_6d

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    :cond_6d
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getAllSettings(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/desktopmode/Utils;->dumpBundle(Ljava/io/PrintWriter;Landroid/os/Bundle;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-eqz v1, :cond_bf

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    const-string v1, "System user (0) settings:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v6}, Lcom/android/server/desktopmode/DesktopModeSettings;->getAllSettingsAsUser(Landroid/content/ContentResolver;I)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/desktopmode/Utils;->dumpBundle(Ljava/io/PrintWriter;Landroid/os/Bundle;)V

    goto :goto_bf

    :pswitch_8e
    if-eqz v3, :cond_94

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    :cond_94
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteAllSettings(Landroid/content/ContentResolver;)V

    goto :goto_bf

    :pswitch_9a
    if-eqz v4, :cond_a0

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    :cond_a0
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_bf

    :pswitch_a6
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v3, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bf

    :pswitch_ac
    if-eqz v4, :cond_b2

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    :cond_b2
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "null"

    invoke-static {v1, v3, v5}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    :cond_bf
    :goto_bf
    return v6

    :sswitch_data_c0
    .sparse-switch
        -0x4f997a55 -> :sswitch_55
        0x18f56 -> :sswitch_4a
        0x1b30f -> :sswitch_3f
        0x32b09e -> :sswitch_34
        0x5a5b64d -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_a6
        :pswitch_9a
        :pswitch_8e
        :pswitch_67
    .end packed-switch
.end method

.method private desktopModeSettingsPrintUsage()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "USAGE: settings get KEY"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       settings put KEY VALUE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       settings delete KEY"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       settings clear"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       settings list"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private multiResolutionManagerCommand()I
    .registers 8

    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v2}, Lcom/android/server/desktopmode/MultiResolutionManager;->getCurrentResolution()Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    goto/16 :goto_b3

    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x2497c4ae

    const/4 v6, 0x1

    if-eq v4, v5, :cond_39

    const v5, 0x1bc62

    if-eq v4, v5, :cond_2e

    goto :goto_44

    :cond_2e
    const-string/jumbo v4, "set"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    move v2, v3

    goto :goto_45

    :cond_39
    const-string/jumbo v4, "supportAll"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    move v2, v6

    goto :goto_45

    :cond_44
    :goto_44
    move v2, v0

    :goto_45
    packed-switch v2, :pswitch_data_bc

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    goto/16 :goto_b5

    :pswitch_4d
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0xddf

    if-eq v4, v5, :cond_6a

    const v5, 0x1ad6f

    if-eq v4, v5, :cond_5f

    goto :goto_75

    :cond_5f
    const-string/jumbo v4, "off"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    move v2, v6

    goto :goto_76

    :cond_6a
    const-string/jumbo v4, "on"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    move v2, v3

    goto :goto_76

    :cond_75
    :goto_75
    move v2, v0

    :goto_76
    packed-switch v2, :pswitch_data_c4

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    goto :goto_8a

    :pswitch_7d
    iget-object v2, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/MultiResolutionManager;->setSupportAllResolution(Z)V

    goto :goto_89

    :pswitch_83
    iget-object v2, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v2, v6}, Lcom/android/server/desktopmode/MultiResolutionManager;->setSupportAllResolution(Z)V

    nop

    :goto_89
    goto :goto_b3

    :goto_8a
    return v0

    :pswitch_8b
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_ad

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    return v0

    :cond_ad
    iget-object v6, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v6, v1, v2, v4, v5}, Lcom/android/server/desktopmode/MultiResolutionManager;->setCustomResolutionForAdbCommand(Ljava/io/PrintWriter;III)V
    :try_end_b2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_b2} :catch_b6

    nop

    :goto_b3
    nop

    return v3

    :goto_b5
    return v0

    :catch_b6
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    return v0

    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_8b
        :pswitch_4d
    .end packed-switch

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_83
        :pswitch_7d
    .end packed-switch
.end method

.method private multiResolutionManagerPrintUsage()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "USAGE: resolution"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       resolution set WIDTH HEIGHT DENSITY"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       resolution supportAll [on|off]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private uiManagerCommand()I
    .registers 10

    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1d

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    :cond_1d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_106

    goto :goto_7e

    :sswitch_26
    const-string/jumbo v4, "showDialog"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    move v4, v5

    goto :goto_7f

    :sswitch_31
    const-string/jumbo v4, "dismissDialog"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    const/4 v4, 0x1

    goto :goto_7f

    :sswitch_3c
    const-string/jumbo v4, "dismissPresentation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    const/4 v4, 0x5

    goto :goto_7f

    :sswitch_47
    const-string/jumbo v4, "showPresentation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    const/4 v4, 0x3

    goto :goto_7f

    :sswitch_52
    const-string/jumbo v4, "showNotification"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    const/4 v4, 0x2

    goto :goto_7f

    :sswitch_5d
    const-string/jumbo v4, "finishActivity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    const/4 v4, 0x7

    goto :goto_7f

    :sswitch_68
    const-string/jumbo v4, "removeNotification"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    const/4 v4, 0x6

    goto :goto_7f

    :sswitch_73
    const-string/jumbo v4, "startActivity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    const/4 v4, 0x4

    goto :goto_7f

    :cond_7e
    :goto_7e
    move v4, v0

    :goto_7f
    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_128

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    goto/16 :goto_fe

    :pswitch_88
    if-eqz v3, :cond_8e

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    :cond_8e
    iget-object v4, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/desktopmode/UiManager;->finishActivity(I)V

    goto :goto_fe

    :pswitch_98
    if-eqz v3, :cond_9e

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    :cond_9e
    iget-object v4, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    goto :goto_fe

    :pswitch_a8
    iget-object v4, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/desktopmode/UiManager;->dismissPresentation(II)V

    goto :goto_fe

    :pswitch_b6
    iget-object v4, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v7, v8, v6}, Lcom/android/server/desktopmode/UiManager;->startActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    goto :goto_fe

    :pswitch_c4
    iget-object v4, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/desktopmode/UiManager;->showPresentation(II)V

    goto :goto_fe

    :pswitch_d2
    if-eqz v3, :cond_d8

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    :cond_d8
    iget-object v4, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    goto :goto_fe

    :pswitch_e2
    iget-object v4, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/desktopmode/UiManager;->dismissDialog(II)V

    goto :goto_fe

    :pswitch_f0
    iget-object v4, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v7, v8, v6}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    :try_end_fd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_fd} :catch_100

    nop

    :goto_fe
    nop

    return v5

    :catch_100
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    nop

    :sswitch_data_106
    .sparse-switch
        -0x5b20666f -> :sswitch_73
        -0x3f93d071 -> :sswitch_68
        -0x33d05f3e -> :sswitch_5d
        -0x2efddb78 -> :sswitch_52
        -0x28ed6549 -> :sswitch_47
        -0x185f793c -> :sswitch_3c
        -0xf4ef38e -> :sswitch_31
        0x1471d2a5 -> :sswitch_26
    .end sparse-switch

    :pswitch_data_128
    .packed-switch 0x0
        :pswitch_f0
        :pswitch_e2
        :pswitch_d2
        :pswitch_c4
        :pswitch_b6
        :pswitch_a8
        :pswitch_98
        :pswitch_88
    .end packed-switch
.end method

.method private uiManagerPrintUsage()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "USAGE: ui showDialog DISPLAYID TYPE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       ui showNotification TYPE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       ui showPresentation WHERE TYPE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       ui startActivity DISPLAYID TYPE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       ui dismissDialog TYPE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       ui dismissPresentation WHERE TYPE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       ui removeNotification TYPE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       ui finishActivity TYPE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_8
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5f5e8754

    if-eq v1, v2, :cond_61

    const v2, -0x33c144ac    # -4.9999184E7f

    if-eq v1, v2, :cond_56

    const/16 v2, 0xddf

    if-eq v1, v2, :cond_4b

    const/16 v2, 0xe94

    if-eq v1, v2, :cond_40

    const v2, 0x1ad6f

    if-eq v1, v2, :cond_35

    const v2, 0x5582bc23

    if-eq v1, v2, :cond_2a

    goto :goto_6b

    :cond_2a
    const-string/jumbo v1, "settings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    const/4 v0, 0x3

    goto :goto_6b

    :cond_35
    const-string/jumbo v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    const/4 v0, 0x1

    goto :goto_6b

    :cond_40
    const-string/jumbo v1, "ui"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    const/4 v0, 0x5

    goto :goto_6b

    :cond_4b
    const-string/jumbo v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    const/4 v0, 0x0

    goto :goto_6b

    :cond_56
    const-string/jumbo v1, "toggle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    const/4 v0, 0x2

    goto :goto_6b

    :cond_61
    const-string/jumbo v1, "resolution"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    const/4 v0, 0x4

    :cond_6b
    :goto_6b
    packed-switch v0, :pswitch_data_8e

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_73
    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerCommand()I

    move-result v0

    return v0

    :pswitch_78
    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerCommand()I

    move-result v0

    return v0

    :pswitch_7d
    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsCommand()I

    move-result v0

    return v0

    :pswitch_82
    iget-object v0, p0, Lcom/android/server/desktopmode/Shell;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/desktopmode/HardwareManager;->command(Ljava/io/PrintWriter;Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_82
        :pswitch_82
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "DesktopModeService commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  on"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Enable desktop mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  off"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Disable desktop mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  toggle"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Toggle desktop mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  settings"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Manage desktop mode settings."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  resolution"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Manage desktop mode resolution."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  ui"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Manage desktop mode UI elements."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
