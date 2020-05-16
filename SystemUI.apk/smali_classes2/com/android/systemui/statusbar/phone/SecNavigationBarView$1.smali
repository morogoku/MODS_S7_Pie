.class Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;
.super Ljava/lang/Object;
.source "SecNavigationBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SecNavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateRestartButton(IZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->access$000(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavbarFeature()Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->setRestartData(IZZ)V

    return-void
.end method
