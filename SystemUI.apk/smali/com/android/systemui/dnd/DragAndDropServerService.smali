.class public Lcom/android/systemui/dnd/DragAndDropServerService;
.super Landroid/app/Service;
.source "DragAndDropServerService.java"

# interfaces
.implements Lcom/android/systemui/dnd/IDragService;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field mClientProxy:Lcom/samsung/android/multiwindow/IDragAndDropClient;

.field mFirstFrameDrawn:Z

.field private final mHandler:Landroid/os/Handler;

.field mStub:Lcom/samsung/android/multiwindow/IDragAndDropServer;

.field mWindow:Lcom/android/systemui/dnd/DragAndDropWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MW_DND_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/systemui/dnd/DragAndDropServerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/dnd/DragAndDropServerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropServerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/dnd/DragAndDropServerService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/dnd/DragAndDropServerService$1;-><init>(Lcom/android/systemui/dnd/DragAndDropServerService;)V

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropServerService;->mStub:Lcom/samsung/android/multiwindow/IDragAndDropServer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/dnd/DragAndDropServerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropServerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropServerService;->mWindow:Lcom/android/systemui/dnd/DragAndDropWindow;

    invoke-virtual {v0}, Lcom/android/systemui/dnd/DragAndDropWindow;->dismiss()V

    return-void
.end method

.method public getClient()Lcom/samsung/android/multiwindow/IDragAndDropClient;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropServerService;->mClientProxy:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropServerService;->mStub:Lcom/samsung/android/multiwindow/IDragAndDropServer;

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IDragAndDropServer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/android/systemui/dnd/DragAndDropServerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/dnd/DragAndDropWindow;

    invoke-direct {v0, p0}, Lcom/android/systemui/dnd/DragAndDropWindow;-><init>(Lcom/android/systemui/dnd/DragAndDropServerService;)V

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropServerService;->mWindow:Lcom/android/systemui/dnd/DragAndDropWindow;

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropServerService;->mWindow:Lcom/android/systemui/dnd/DragAndDropWindow;

    invoke-virtual {v0}, Lcom/android/systemui/dnd/DragAndDropWindow;->create()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/dnd/DragAndDropServerService;->mFirstFrameDrawn:Z

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropServerService;->mWindow:Lcom/android/systemui/dnd/DragAndDropWindow;

    invoke-virtual {v0}, Lcom/android/systemui/dnd/DragAndDropWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/dnd/DragAndDropServerService$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/dnd/DragAndDropServerService$2;-><init>(Lcom/android/systemui/dnd/DragAndDropServerService;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget-object v0, Lcom/android/systemui/dnd/DragAndDropServerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
