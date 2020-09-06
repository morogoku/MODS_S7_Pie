.class Lcom/android/server/HarmonyEASService$PackageHandler;
.super Landroid/os/Handler;
.source "HarmonyEASService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HarmonyEASService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# static fields
.field private static final HANDLE_SAVE_HASH_TO_XML:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/HarmonyEASService;


# direct methods
.method constructor <init>(Lcom/android/server/HarmonyEASService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/HarmonyEASService$PackageHandler;->this$0:Lcom/android/server/HarmonyEASService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_d

    :cond_6
    iget-object v0, p0, Lcom/android/server/HarmonyEASService$PackageHandler;->this$0:Lcom/android/server/HarmonyEASService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/HarmonyEASService;->saveHash(I)V
    invoke-static {v0, v1}, Lcom/android/server/HarmonyEASService;->access$000(Lcom/android/server/HarmonyEASService;I)V

    :goto_d
    return-void
.end method
