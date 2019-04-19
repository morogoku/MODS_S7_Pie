.class Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$2;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxContainer.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$2;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAODClockStyleChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$2;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$400(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$2;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$500(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getAODServiceBoxPageGravity()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$2;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$500(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->setAODServiceBoxPageGravity(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$2;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sendRequestRemoteViewsBroadcast()V

    return-void
.end method

.method public onClockColorChanged()V
    .locals 0

    return-void
.end method

.method public onClockPackageChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$2;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$300(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    return-void
.end method

.method public onClockStyleChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$2;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$300(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    return-void
.end method
