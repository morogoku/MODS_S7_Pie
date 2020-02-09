.class Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;
.super Landroid/view/IWallpaperVisibilityListener$Stub;
.source "NavigationBarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-direct {p0}, Landroid/view/IWallpaperVisibilityListener$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onWallpaperVisibilityChanged$0(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->access$100(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;ZZ)V

    return-void
.end method


# virtual methods
.method public onWallpaperVisibilityChanged(ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->access$002(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;Z)Z

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarTransitions$1$5foY_Yygo1gW25-mVBRpPSQRb_g;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarTransitions$1$5foY_Yygo1gW25-mVBRpPSQRb_g;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
