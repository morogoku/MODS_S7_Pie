.class Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$1;
.super Ljava/lang/Object;
.source "StatusBarNavBarFeature.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$002(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;Z)Z

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onScreenTurnedOff()V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$002(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;Z)Z

    return-void
.end method
