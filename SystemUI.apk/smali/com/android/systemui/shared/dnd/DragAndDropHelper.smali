.class public Lcom/android/systemui/shared/dnd/DragAndDropHelper;
.super Ljava/lang/Object;
.source "DragAndDropHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/dnd/DragAndDropHelper$DragClientListener;,
        Lcom/android/systemui/shared/dnd/DragAndDropHelper$RequesterType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mHandler:Landroid/os/Handler;

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private mListener:Lcom/android/systemui/shared/dnd/DragAndDropHelper$DragClientListener;

.field private mRequesterType:I
    .annotation build Lcom/android/systemui/shared/dnd/DragAndDropHelper$RequesterType;
    .end annotation
.end field

.field private mServerProxy:Lcom/samsung/android/multiwindow/IDragAndDropServer;

.field private mStub:Lcom/samsung/android/multiwindow/IDragAndDropClient;

.field private mUnbinded:Z

.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowingMode:I
    .annotation build Landroid/app/WindowConfiguration$WindowingMode;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MW_DND_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/dnd/DragAndDropHelper$DragClientListener;I)V
    .locals 2
    .param p4    # I
        .annotation build Lcom/android/systemui/shared/dnd/DragAndDropHelper$RequesterType;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;-><init>(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mStub:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mWindowingMode:I

    new-instance v1, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;-><init>(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)V

    iput-object v1, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mConnection:Landroid/content/ServiceConnection;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mView:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mListener:Lcom/android/systemui/shared/dnd/DragAndDropHelper$DragClientListener;

    iput p4, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mRequesterType:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mAppContext:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mUnbinded:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)Lcom/android/systemui/shared/dnd/DragAndDropHelper$DragClientListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mListener:Lcom/android/systemui/shared/dnd/DragAndDropHelper$DragClientListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->performDrag()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->disconnect()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)Lcom/samsung/android/multiwindow/IDragAndDropServer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mServerProxy:Lcom/samsung/android/multiwindow/IDragAndDropServer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/shared/dnd/DragAndDropHelper;Lcom/samsung/android/multiwindow/IDragAndDropServer;)Lcom/samsung/android/multiwindow/IDragAndDropServer;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mServerProxy:Lcom/samsung/android/multiwindow/IDragAndDropServer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)Lcom/samsung/android/multiwindow/IDragAndDropClient;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mStub:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mRequesterType:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mWindowingMode:I

    return v0
.end method

.method public static create(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/dnd/DragAndDropHelper$DragClientListener;I)Lcom/android/systemui/shared/dnd/DragAndDropHelper;
    .locals 2
    .param p3    # I
        .annotation build Lcom/android/systemui/shared/dnd/DragAndDropHelper$RequesterType;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->TAG:Ljava/lang/String;

    const-string v1, "created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/dnd/DragAndDropHelper$DragClientListener;I)V

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->TAG:Ljava/lang/String;

    const-string v1, "Parameters are should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private disconnect()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mUnbinded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mUnbinded:Z

    return-void
.end method

.method private performDrag()Z
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Landroid/content/ClipData$Item;

    const-string v3, ""

    invoke-direct {v2, v3}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v3, "text/plain"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/ClipData;

    const-string v5, ""

    invoke-direct {v4, v5, v3, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    new-instance v5, Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mAppContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v1, v6, v6}, Landroid/view/View;->layout(IIII)V

    new-instance v1, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v1, v5}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v6, 0x0

    const/16 v7, 0x100

    invoke-virtual {v0, v4, v1, v6, v7}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v6

    sget-object v7, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isSuccess="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method


# virtual methods
.method public setWindowingMode(I)Lcom/android/systemui/shared/dnd/DragAndDropHelper;
    .locals 0
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param

    iput p1, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mWindowingMode:I

    return-object p0
.end method

.method public show()V
    .locals 4

    sget-object v0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show : mUnbinded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mUnbinded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.dnd.DragAndDropServerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mUnbinded:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method
