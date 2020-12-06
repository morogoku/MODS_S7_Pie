.class Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$2;
.super Ljava/lang/Object;
.source "StatusBarNavBarFeature.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$2;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceProvisionedChanged()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_SETUP_WIZARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$2;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBar()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$2;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarWindow()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$2;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavbarFragmentListener()Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$2;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->checkNavigationBarType()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->switchNavigationBar(Landroid/view/View;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;I)V

    :cond_0
    return-void
.end method

.method public onUserSetupChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$2;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$200(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$2;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$200(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isUserSetup(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$2;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$302(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;Z)Z

    return-void
.end method
