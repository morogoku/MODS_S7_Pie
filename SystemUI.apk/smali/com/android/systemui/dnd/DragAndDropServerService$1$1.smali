.class Lcom/android/systemui/dnd/DragAndDropServerService$1$1;
.super Ljava/lang/Object;
.source "DragAndDropServerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/dnd/DragAndDropServerService$1;->bind(Landroid/os/IBinder;Landroid/graphics/Bitmap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/dnd/DragAndDropServerService$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/dnd/DragAndDropServerService$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dnd/DragAndDropServerService$1$1;->this$1:Lcom/android/systemui/dnd/DragAndDropServerService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    sget-object v0, Lcom/android/systemui/dnd/DragAndDropServerService;->TAG:Ljava/lang/String;

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
