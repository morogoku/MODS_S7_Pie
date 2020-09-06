.class public Lcom/android/server/RCPManagerService$PersonaObserver;
.super Lcom/samsung/android/knox/SemPersonaObserver;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RCPManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PersonaObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/RCPManagerService;Landroid/content/Context;II)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/RCPManagerService$PersonaObserver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/knox/SemPersonaObserver;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/RCPManagerService$PersonaObserver;)I
    .registers 2

    iget v0, p0, Lcom/android/server/RCPManagerService$PersonaObserver;->containerId:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/RCPManagerService$PersonaObserver;)I
    .registers 2

    iget v0, p0, Lcom/android/server/RCPManagerService$PersonaObserver;->containerId:I

    return v0
.end method


# virtual methods
.method public onKeyGuardStateChanged(Z)V
    .registers 4

    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onKeyGuardStateChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSessionExpired()V
    .registers 3

    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "  onSessionExpired "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStateChange(Lcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
    .registers 6

    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " inside onstatechange oldState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " newstate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    sget-object v0, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    sget-object v0, Lcom/samsung/android/knox/SemPersonaState;->SUPER_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_58

    :cond_39
    sget-object v0, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {p2, v0}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    sget-object v0, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/server/RCPManagerService$PersonaObserver;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->taskHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->access$2100(Lcom/android/server/RCPManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/RCPManagerService$PersonaObserver$2;

    invoke-direct {v1, p0}, Lcom/android/server/RCPManagerService$PersonaObserver$2;-><init>(Lcom/android/server/RCPManagerService$PersonaObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_66

    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/android/server/RCPManagerService$PersonaObserver;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->taskHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->access$2100(Lcom/android/server/RCPManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/RCPManagerService$PersonaObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/RCPManagerService$PersonaObserver$1;-><init>(Lcom/android/server/RCPManagerService$PersonaObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_66
    :goto_66
    return-void
.end method
