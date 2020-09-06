.class Lcom/android/server/accessibility/AccessibilityManagerService$11;
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

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->semDisableScreenNotificationEffect()Z
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10900(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->semEnableScreenNotificationEffect()Z
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$11000(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_ON:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10600()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->semDisableScreenNotificationEffect()Z
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10900(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_OFF:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10700()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->semEnableScreenNotificationEffect()Z
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$11000(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_ON:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10600()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$11;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->semDisableScreenNotificationEffect()Z
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10900(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_OFF:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10700()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    const/4 v0, 0x0

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->bIsScreenOn:Z
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$11102(Z)Z

    const-string v0, "AccessibilityManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen blinked, bIsScreenOn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->bIsScreenOn:Z
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$11100()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
