.class public final synthetic Lcom/android/server/backup/-$$Lambda$BackupManagerService$d1gjNfZ3ZYIuaY4s01CFoLZa4Z0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/backup/internal/OnTaskFinishedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/backup/BackupManagerService;

.field private final synthetic f$1:Lcom/android/server/backup/transport/TransportClient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$d1gjNfZ3ZYIuaY4s01CFoLZa4Z0;->f$0:Lcom/android/server/backup/BackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$d1gjNfZ3ZYIuaY4s01CFoLZa4Z0;->f$1:Lcom/android/server/backup/transport/TransportClient;

    return-void
.end method


# virtual methods
.method public final onFinished(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$d1gjNfZ3ZYIuaY4s01CFoLZa4Z0;->f$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$d1gjNfZ3ZYIuaY4s01CFoLZa4Z0;->f$1:Lcom/android/server/backup/transport/TransportClient;

    invoke-static {v0, v1, p1}, Lcom/android/server/backup/BackupManagerService;->lambda$requestBackup$1(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    return-void
.end method
