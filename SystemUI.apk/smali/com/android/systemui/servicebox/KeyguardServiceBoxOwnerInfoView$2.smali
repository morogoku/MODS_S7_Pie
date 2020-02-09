.class Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardServiceBoxOwnerInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView$2;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView$2;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->access$000(Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView$2;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->setSelected(Z)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView$2;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->access$000(Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;Z)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView$2;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->access$000(Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;Z)V

    return-void
.end method
