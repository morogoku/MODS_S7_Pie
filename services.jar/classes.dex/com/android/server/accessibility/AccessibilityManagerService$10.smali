.class Lcom/android/server/accessibility/AccessibilityManagerService$10;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->semOnLightNotification(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$10;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->cfmsService:Landroid/os/ICustomFrequencyManager;
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10500()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    if-eqz v0, :cond_5e

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->cfmsService:Landroid/os/ICustomFrequencyManager;
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10500()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    const-string v1, "CLOCK_SET_TORCH_LIGHT"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->cfmsService:Landroid/os/ICustomFrequencyManager;
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10500()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    const-string v1, "CLOCK_SET_TORCH_LIGHT"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_ON:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10600()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->cfmsService:Landroid/os/ICustomFrequencyManager;
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10500()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    const-string v1, "CLOCK_SET_TORCH_LIGHT"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_OFF:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10700()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->cfmsService:Landroid/os/ICustomFrequencyManager;
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10500()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    const-string v1, "CLOCK_SET_TORCH_LIGHT"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_ON:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10600()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->cfmsService:Landroid/os/ICustomFrequencyManager;
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10500()Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    const-string v1, "CLOCK_SET_TORCH_LIGHT"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_OFF:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10700()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_65

    :cond_5e
    const-string v0, "AccessibilityManagerService"

    const-string v1, "Can\'t use light notification please check cfmsService!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_65
    const/4 v0, 0x0

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->bIsFlashOn:Z
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10802(Z)Z

    const-string v0, "AccessibilityManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flash blinked, bIsFlashOn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->bIsFlashOn:Z
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10800()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_83} :catch_84

    goto :goto_8e

    :catch_84
    move-exception v0

    const-string v1, "AccessibilityManagerService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8e
    return-void
.end method
