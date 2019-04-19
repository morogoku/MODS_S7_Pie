.class Lcom/android/server/am/ActivityManagerService$PermissionListInfo;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PermissionListInfo"
.end annotation


# instance fields
.field private dateUsePermission:Ljava/lang/String;

.field private namePermission:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PermissionListInfo;->namePermission:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$PermissionListInfo;->dateUsePermission:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/am/ActivityManagerService$PermissionListInfo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PermissionListInfo;->namePermission:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/am/ActivityManagerService$PermissionListInfo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PermissionListInfo;->dateUsePermission:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setDateUsePermission(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PermissionListInfo;->dateUsePermission:Ljava/lang/String;

    return-void
.end method

.method public setNamePermission(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PermissionListInfo;->namePermission:Ljava/lang/String;

    return-void
.end method
