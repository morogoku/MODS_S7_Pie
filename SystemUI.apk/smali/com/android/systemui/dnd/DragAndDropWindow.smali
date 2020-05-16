.class public Lcom/android/systemui/dnd/DragAndDropWindow;
.super Landroid/app/Dialog;
.source "DragAndDropWindow.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field mAppContext:Landroid/content/Context;

.field mService:Lcom/android/systemui/dnd/IDragService;

.field mView:Lcom/android/systemui/dnd/DragAndDropView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MW_DND_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/systemui/dnd/DragAndDropWindow;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/dnd/DragAndDropWindow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/dnd/DragAndDropServerService;)V
    .locals 1

    const v0, 0x7f13028f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Lcom/android/systemui/dnd/DragAndDropServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropWindow;->mAppContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/dnd/DragAndDropWindow;->mService:Lcom/android/systemui/dnd/IDragService;

    return-void
.end method

.method private init()V
    .locals 2

    const v0, 0x7f0a017d

    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/DragAndDropWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dnd/DragAndDropView;

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropWindow;->mView:Lcom/android/systemui/dnd/DragAndDropView;

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropWindow;->mView:Lcom/android/systemui/dnd/DragAndDropView;

    iget-object v1, p0, Lcom/android/systemui/dnd/DragAndDropWindow;->mService:Lcom/android/systemui/dnd/IDragService;

    invoke-virtual {v0, v1}, Lcom/android/systemui/dnd/DragAndDropView;->setParent(Lcom/android/systemui/dnd/IDragService;)V

    invoke-direct {p0}, Lcom/android/systemui/dnd/DragAndDropWindow;->setLayoutParams()V

    return-void
.end method

.method private setLayoutParams()V
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e0

    const/16 v4, 0x400

    const/4 v5, -0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string v1, "MW : DragAndDropWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/dnd/DragAndDropWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private updateSystemUiVisibility()V
    .locals 2

    const/16 v0, 0x700

    invoke-virtual {p0}, Lcom/android/systemui/dnd/DragAndDropWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/graphics/Bitmap;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropWindow;->mView:Lcom/android/systemui/dnd/DragAndDropView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/dnd/DragAndDropView;->bind(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d006d

    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/DragAndDropWindow;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/systemui/dnd/DragAndDropWindow;->init()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    sget-object v0, Lcom/android/systemui/dnd/DragAndDropWindow;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    sget-object v0, Lcom/android/systemui/dnd/DragAndDropWindow;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropWindow;->mView:Lcom/android/systemui/dnd/DragAndDropView;

    invoke-virtual {v0}, Lcom/android/systemui/dnd/DragAndDropView;->performDragEnd()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    sget-object v0, Lcom/android/systemui/dnd/DragAndDropWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged : hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/dnd/DragAndDropWindow;->updateSystemUiVisibility()V

    return-void
.end method
