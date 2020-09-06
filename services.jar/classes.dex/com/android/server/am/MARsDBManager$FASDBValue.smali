.class public Lcom/android/server/am/MARsDBManager$FASDBValue;
.super Ljava/lang/Object;
.source "MARsDBManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FASDBValue"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public strDisableTime:Ljava/lang/String;

.field public strDisableType:Ljava/lang/String;

.field public strExtras:Ljava/lang/String;

.field public strFasReason:Ljava/lang/String;

.field public strLevel:Ljava/lang/String;

.field public strMode:Ljava/lang/String;

.field public strNew:Ljava/lang/String;

.field public strPackageType:Ljava/lang/String;

.field public strPkgName:Ljava/lang/String;

.field public strResetTime:Ljava/lang/String;

.field public strUid:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strPkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strUid:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strDisableTime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strPkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strUid:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strMode:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strFasReason:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strPkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strUid:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strMode:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strFasReason:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strResetTime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strPkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strUid:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strMode:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strFasReason:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strExtras:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strResetTime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strPkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strUid:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strMode:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strFasReason:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strExtras:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strResetTime:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strLevel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strPkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strUid:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strMode:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strNew:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strFasReason:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strExtras:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strResetTime:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strLevel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strPkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strUid:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strMode:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strNew:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strFasReason:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strExtras:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strResetTime:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strPackageType:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strLevel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strPkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strUid:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strMode:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strNew:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strFasReason:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strExtras:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strResetTime:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strPackageType:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strLevel:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strDisableType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strPkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strUid:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strMode:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strNew:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strFasReason:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strExtras:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strResetTime:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strPackageType:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strLevel:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strDisableType:Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/am/MARsDBManager$FASDBValue;->strDisableTime:Ljava/lang/String;

    return-void
.end method
