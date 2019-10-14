.class Lcom/android/server/power/PowerManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "PowerManagerShellCommand.java"


# static fields
.field private static final LOW_POWER_MODE_ON:I = 0x1


# instance fields
.field final mInterface:Landroid/os/IPowerManager;


# direct methods
.method constructor <init>(Landroid/os/IPowerManager;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mInterface:Landroid/os/IPowerManager;

    return-void
.end method

.method private runSetMode()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    move v2, v1

    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_e} :catch_1c

    move v1, v3

    nop

    iget-object v2, p0, Lcom/android/server/power/PowerManagerShellCommand;->mInterface:Landroid/os/IPowerManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_17

    goto :goto_18

    :cond_17
    move v4, v3

    :goto_18
    invoke-interface {v2, v4}, Landroid/os/IPowerManager;->setPowerSaveMode(Z)Z

    return v3

    :catch_1c
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7

    if-nez p1, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x519c0c2e

    if-eq v2, v3, :cond_16

    goto :goto_21

    :cond_16
    const-string/jumbo v2, "set-mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    move v2, v1

    :goto_22
    if-eqz v2, :cond_29

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_29
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runSetMode()I

    move-result v2
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2d} :catch_2e

    return v2

    :catch_2e
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public onHelp()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Power manager (power) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set-mode MODE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    sets the power mode of the device to MODE."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    1 turns low power mode on and 0 turns low power mode off."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method
