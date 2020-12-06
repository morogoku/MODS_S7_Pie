.class Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "StatusBarNavBarFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$3;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$3;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$400(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$3;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$400(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->onUserSwitched()V

    :cond_0
    return-void
.end method
