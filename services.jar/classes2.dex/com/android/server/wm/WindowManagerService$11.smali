.class Lcom/android/server/wm/WindowManagerService$11;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x40

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_24

    const/16 v0, 0x80

    if-eq p1, v0, :cond_19

    packed-switch p1, :pswitch_data_7e

    goto :goto_2e

    :pswitch_f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mGearVrDocked:Z

    goto :goto_2e

    :pswitch_14
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mGearVrDocked:Z

    goto :goto_2e

    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mGearVrEntered:Z

    if-ne p2, v1, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mGearVrPersistentVrMode:Z

    goto :goto_2e

    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mGearVrEntered:Z

    if-ne p2, v1, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mGearVrPersistentVrMode:Z

    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mHideCutoutForGearVr:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mGearVrDocked:Z

    if-nez v4, :cond_49

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mGearVrEntered:Z

    if-nez v4, :cond_49

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mGearVrPersistentVrMode:Z

    if-eqz v4, :cond_47

    goto :goto_49

    :cond_47
    move v2, v3

    nop

    :cond_49
    :goto_49
    iput-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mHideCutoutForGearVr:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mHideCutoutForGearVr:Z

    if-eq v1, v0, :cond_7b

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBaseDisplayCutout for VR. mHideCutoutForGearVr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mHideCutoutForGearVr:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_7b

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayCutout(II)V

    :cond_7b
    return-void

    nop

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_f
    .end packed-switch
.end method
