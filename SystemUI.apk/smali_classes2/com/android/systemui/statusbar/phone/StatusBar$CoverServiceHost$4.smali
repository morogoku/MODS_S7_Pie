.class Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost$4;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost$4;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost$4;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost$4;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost$4;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost$4;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1300(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost$4;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setExpandedHeight(F)V

    :cond_0
    return-void
.end method
