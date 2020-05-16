.class Lcom/android/systemui/statusbar/phone/StatusBar$6;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideCameraState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$isSmartViewConnected:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->val$isSmartViewConnected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mFirstHideCameraStateChecked:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->val$isSmartViewConnected:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/om/IOverlayManager;

    move-result-object v3

    const-string v5, "com.samsung.systemui.hidenotch.withoutcornerround"

    invoke-interface {v3, v5, v1, v2}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v3

    move v0, v3

    const-string v3, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOverlayManager - mFirstHideCameraStateChecking - isSmartViewConnected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->val$isSmartViewConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mFirstHideCameraStateChecked:Z

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mOverlayEnable:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->val$isSmartViewConnected:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mHiddenInSmartViewConnection:Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean v1, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mHiddenInSmartViewConnection:Z

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mOverlayEnable:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mHiddenInSmartViewConnection:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/om/IOverlayManager;

    move-result-object v3

    const-string v4, "com.samsung.systemui.hidenotch.withoutcornerround"

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mOverlayEnable:Z

    invoke-interface {v3, v4, v5, v2}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v3

    move v0, v3

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/om/IOverlayManager;

    move-result-object v3

    const-string v4, "com.samsung.systemui.hidenotch"

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mOverlayEnable:Z

    invoke-interface {v3, v4, v5, v2}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v3

    move v0, v3

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mHiddenInSmartViewConnection:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/om/IOverlayManager;

    move-result-object v3

    const-string v4, "com.samsung.systemui.hidenotch.withoutcornerround"

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mOverlayEnable:Z

    invoke-interface {v3, v4, v5, v2}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v3

    move v0, v3

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/om/IOverlayManager;

    move-result-object v3

    const-string v4, "com.samsung.systemui.hidenotch"

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mOverlayEnable:Z

    invoke-interface {v3, v4, v5, v2}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v3

    move v0, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/om/IOverlayManager;

    move-result-object v3

    const-string v4, "com.samsung.systemui.hidenotch.withoutcornerround"

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mOverlayEnable:Z

    invoke-interface {v3, v4, v5, v2}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v3

    move v0, v3

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean v1, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mHiddenInSmartViewConnection:Z

    :goto_2
    const-string v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOverlayManager.setEnabled mOverlayEnable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mOverlayEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " user id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isSmartViewConnected:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->val$isSmartViewConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mHiddenInSmartViewConnection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mHiddenInSmartViewConnection:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    const-string v4, "StatusBar"

    const-string v5, "Can\'t com.samsung.systemui.hidenotch overlay"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean v1, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mHiddenInSmartViewConnection:Z

    :goto_3
    return-void
.end method
