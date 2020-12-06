.class public Lcom/android/systemui/cover/CoverWindowDelegate;
.super Ljava/lang/Object;
.source "CoverWindowDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

.field private mIsShowing:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/cover/CoverWindowDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/cover/CoverWindowDelegate;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/cover/CoverWindowDelegate;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method private createDecorView()Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;
    .locals 2

    new-instance v0, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;-><init>(Lcom/android/systemui/cover/CoverWindowDelegate;Landroid/content/Context;)V

    return-object v0
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x833

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v1, 0x20700

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    const-string v1, "COVER"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public attach()Landroid/view/ViewGroup;
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mIsShowing:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/CoverWindowDelegate;->TAG:Ljava/lang/String;

    const-string v1, "attach : it is showing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mIsShowing:Z

    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/cover/CoverWindowDelegate;->createDecorView()Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    invoke-direct {p0}, Lcom/android/systemui/cover/CoverWindowDelegate;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    return-object v1
.end method

.method public detach()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mIsShowing:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/CoverWindowDelegate;->TAG:Ljava/lang/String;

    const-string v1, "detach : it is NOT showing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/systemui/cover/CoverWindowDelegate;->TAG:Ljava/lang/String;

    const-string v2, "detach : decorView is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mIsShowing:Z

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/systemui/cover/CoverWindowDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeViewImmediate\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;->removeAllViews()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    return-void
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    invoke-virtual {v0}, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
