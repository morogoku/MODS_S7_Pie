.class Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater$1;
.super Ljava/lang/Object;
.source "StatusBarCarrierLabelInflater.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartedWakingUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->access$000(Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;)Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->access$000(Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;)Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->showStatusBarCarrierLabel()V

    :cond_0
    return-void
.end method
