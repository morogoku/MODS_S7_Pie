.class Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardUsimTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;Lcom/android/internal/telephony/IccCardConstants$State;)V

    :cond_0
    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 2

    const-string v0, "KeyguardUsimTextView"

    const-string v1, "onRefreshCarrierInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2

    const-string v0, "KeyguardUsimTextView"

    const-string v1, "onSimStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method
