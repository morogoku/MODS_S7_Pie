.class Lcom/android/server/UiModeManagerService$Shell;
.super Landroid/os/ShellCommand;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Shell"
.end annotation


# static fields
.field public static final NIGHT_MODE_STR_AUTO:Ljava/lang/String; = "auto"

.field public static final NIGHT_MODE_STR_NO:Ljava/lang/String; = "no"

.field public static final NIGHT_MODE_STR_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final NIGHT_MODE_STR_YES:Ljava/lang/String; = "yes"


# instance fields
.field private final mInterface:Landroid/app/IUiModeManager;


# direct methods
.method constructor <init>(Landroid/app/IUiModeManager;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    return-void
.end method

.method private handleNightMode()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentNightMode()V

    return v2

    :cond_f
    invoke-static {v1}, Lcom/android/server/UiModeManagerService$Shell;->strToNightMode(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1e

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v4, v3}, Landroid/app/IUiModeManager;->setNightMode(I)V

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentNightMode()V

    return v2

    :cond_1e
    const-string v2, "Error: mode must be \'yes\', \'no\', or \'auto\'"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, -0x1

    return v2
.end method

.method private static nightModeToStr(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    const-string/jumbo v0, "unknown"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "yes"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "no"

    return-object v0

    :pswitch_f
    const-string v0, "auto"

    return-object v0

    nop

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method

.method private printCurrentNightMode()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->getNightMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/UiModeManagerService$Shell;->nightModeToStr(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Night mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static strToNightMode(Ljava/lang/String;)I
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xdc1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-eq v0, v1, :cond_2c

    const v1, 0x1d2e7

    if-eq v0, v1, :cond_21

    const v1, 0x2dddaf

    if-eq v0, v1, :cond_17

    goto :goto_37

    :cond_17
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v4

    goto :goto_38

    :cond_21
    const-string/jumbo v0, "yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v3

    goto :goto_38

    :cond_2c
    const-string/jumbo v0, "no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v2

    goto :goto_38

    :cond_37
    :goto_37
    move v0, v5

    :goto_38
    packed-switch v0, :pswitch_data_40

    return v5

    :pswitch_3c
    return v3

    :pswitch_3d
    return v2

    :pswitch_3e
    return v4

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
    .end packed-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7

    if-nez p1, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_7
    const/4 v0, -0x1

    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x63f6418

    if-eq v1, v2, :cond_12

    goto :goto_1d

    :cond_12
    const-string/jumbo v1, "night"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    move v1, v0

    :goto_1e
    if-eqz v1, :cond_25

    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_25
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->handleNightMode()I

    move-result v1
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_29} :catch_2a

    return v1

    :catch_2a
    move-exception v1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public onHelp()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "UiModeManager service (uimode) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  night [yes|no|auto]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Set or read night mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
