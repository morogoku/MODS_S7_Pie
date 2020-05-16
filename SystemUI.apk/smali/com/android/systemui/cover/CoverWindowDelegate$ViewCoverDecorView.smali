.class Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;
.super Landroid/widget/FrameLayout;
.source "CoverWindowDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cover/CoverWindowDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewCoverDecorView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cover/CoverWindowDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/cover/CoverWindowDelegate;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;->this$0:Lcom/android/systemui/cover/CoverWindowDelegate;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {p1, v0}, Lcom/android/systemui/cover/CoverWindowDelegate;->access$002(Lcom/android/systemui/cover/CoverWindowDelegate;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    return-void
.end method
