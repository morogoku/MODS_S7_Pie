.class final Lcom/android/server/am/MultiDisplayManagerService$MultiDisplayShellCommand;
.super Ljava/lang/Object;
.source "MultiDisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiDisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MultiDisplayShellCommand"
.end annotation


# static fields
.field private static final CONFIGURATION_CONTAINER_COMMAND:Ljava/lang/String; = "-config"


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiDisplayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiDisplayManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService$MultiDisplayShellCommand;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dumpConfigurationLocked(Ljava/io/PrintWriter;)V
    .registers 6

    const-string v0, "ACTIVITY MANAGER CONFIGURATION (dumpsys activity config)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "#Root ActivityStackSupervisor"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Full="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$MultiDisplayShellCommand;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;
    invoke-static {v1}, Lcom/android/server/am/MultiDisplayManagerService;->access$600(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Over="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$MultiDisplayShellCommand;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;
    invoke-static {v1}, Lcom/android/server/am/MultiDisplayManagerService;->access$600(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Merg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$MultiDisplayShellCommand;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;
    invoke-static {v1}, Lcom/android/server/am/MultiDisplayManagerService;->access$600(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$MultiDisplayShellCommand;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;
    invoke-static {v0}, Lcom/android/server/am/MultiDisplayManagerService;->access$600(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_6f
    if-ge v1, v0, :cond_83

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService$MultiDisplayShellCommand;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;
    invoke-static {v2}, Lcom/android/server/am/MultiDisplayManagerService;->access$600(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/server/am/ActivityDisplay;->dumpConfigurationLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    :cond_83
    return-void
.end method


# virtual methods
.method executeIfPossibleLocked(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 6

    const-string v0, "-multidisplay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_20

    const-string v0, "-md"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_20

    :cond_12
    const-string v0, "-config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0, p3}, Lcom/android/server/am/MultiDisplayManagerService$MultiDisplayShellCommand;->dumpConfigurationLocked(Ljava/io/PrintWriter;)V

    return v1

    :cond_1e
    const/4 v0, 0x0

    return v0

    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$MultiDisplayShellCommand;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/am/MultiDisplayManagerService;->dumpLocked(Ljava/io/PrintWriter;)V

    return v1
.end method
