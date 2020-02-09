.class public Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;
.super Ljava/lang/Object;
.source "SideScreenWindowManager.java"


# instance fields
.field private final mBinder:Landroid/os/Binder;

.field private mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManager:Landroid/view/WindowManager;


# virtual methods
.method addDivider(Landroid/view/View;IIILjava/lang/String;)V
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x8

    const/4 v5, -0x3

    move-object v0, v6

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->mBinder:Landroid/os/Binder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v0, p5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v1, 0x700

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addTouchInterceptWindow(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x3

    invoke-direct {v0, v1, v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->mBinder:Landroid/os/Binder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8e2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x108

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method remove(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method setTouchable(Landroid/view/View;Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    const-string v1, "SideScreenWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTouchable() there\'s no layoutParams for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method
