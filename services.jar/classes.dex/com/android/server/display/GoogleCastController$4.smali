.class Lcom/android/server/display/GoogleCastController$4;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "GoogleCastController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/GoogleCastController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/GoogleCastController;


# direct methods
.method constructor <init>(Lcom/android/server/display/GoogleCastController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 7

    if-eqz p2, :cond_ce

    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v0

    if-eqz v0, :cond_ce

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ce

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$200(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-nez v0, :cond_79

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_79

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_34

    const-string v0, "Audio Mirroring"

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    :cond_34
    const-string v0, "GoogleCastController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRouteChanged() GoogleCast is connected. route = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$300(Lcom/android/server/display/GoogleCastController;)Lcom/android/server/display/ControllerUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/ControllerUtils;->startControllerService()V

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/display/GoogleCastController;->broadcastGoogleCastState(I)V
    invoke-static {v0, v2}, Lcom/android/server/display/GoogleCastController;->access$400(Lcom/android/server/display/GoogleCastController;I)V

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # invokes: Lcom/android/server/display/GoogleCastController;->handleConnectionStateChanged(I)V
    invoke-static {v0, v2}, Lcom/android/server/display/GoogleCastController;->access$500(Lcom/android/server/display/GoogleCastController;I)V

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # setter for: Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v0, p2}, Lcom/android/server/display/GoogleCastController;->access$202(Lcom/android/server/display/GoogleCastController;Landroid/media/MediaRouter$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$600(Lcom/android/server/display/GoogleCastController;)Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setRemoteDisplayState(I)V

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    iget-object v1, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v1}, Lcom/android/server/display/GoogleCastController;->access$200(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    # invokes: Lcom/android/server/display/GoogleCastController;->setLastConnectedGoogleCast(Landroid/media/MediaRouter$RouteInfo;)V
    invoke-static {v0, v1}, Lcom/android/server/display/GoogleCastController;->access$700(Lcom/android/server/display/GoogleCastController;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_ce

    :cond_79
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$200(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$200(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mRouter:Landroid/media/MediaRouter;
    invoke-static {v1}, Lcom/android/server/display/GoogleCastController;->access$800(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v2}, Lcom/android/server/display/GoogleCastController;->access$200(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    if-eq v0, v1, :cond_ce

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_ce

    const-string v0, "GoogleCastController"

    const-string/jumbo v1, "onRouteChanged() GoogleCast is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$300(Lcom/android/server/display/GoogleCastController;)Lcom/android/server/display/ControllerUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/ControllerUtils;->stopControllerService()V

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/display/GoogleCastController;->broadcastGoogleCastState(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/GoogleCastController;->access$400(Lcom/android/server/display/GoogleCastController;I)V

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # invokes: Lcom/android/server/display/GoogleCastController;->handleConnectionStateChanged(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/GoogleCastController;->access$500(Lcom/android/server/display/GoogleCastController;I)V

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v0, v1}, Lcom/android/server/display/GoogleCastController;->access$202(Lcom/android/server/display/GoogleCastController;Landroid/media/MediaRouter$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mRouter:Landroid/media/MediaRouter;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$800(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    :cond_ce
    :goto_ce
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .registers 6

    if-eqz p3, :cond_41

    const/4 v0, 0x7

    invoke-virtual {p3, v0}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_41

    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_41

    const-string v0, "GoogleCastController"

    const-string/jumbo v1, "onRouteUnselected() GoogleCast is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$300(Lcom/android/server/display/GoogleCastController;)Lcom/android/server/display/ControllerUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/ControllerUtils;->stopControllerService()V

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/display/GoogleCastController;->broadcastGoogleCastState(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/GoogleCastController;->access$400(Lcom/android/server/display/GoogleCastController;I)V

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # invokes: Lcom/android/server/display/GoogleCastController;->handleConnectionStateChanged(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/GoogleCastController;->access$500(Lcom/android/server/display/GoogleCastController;I)V

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v0, v1}, Lcom/android/server/display/GoogleCastController;->access$202(Lcom/android/server/display/GoogleCastController;Landroid/media/MediaRouter$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mRouter:Landroid/media/MediaRouter;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$800(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    :cond_41
    return-void
.end method
