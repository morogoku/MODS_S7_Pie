.class public final synthetic Lcom/android/server/-$$Lambda$SdpManagerService$SecureFileSystemManager$8DaWW5quQXUgqMf6jJxGhRKCshk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$SecureFileSystemManager$8DaWW5quQXUgqMf6jJxGhRKCshk;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/server/-$$Lambda$SdpManagerService$SecureFileSystemManager$8DaWW5quQXUgqMf6jJxGhRKCshk;->f$0:I

    check-cast p1, Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->lambda$prepare$0(ILcom/android/server/pm/PackageManagerService;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method