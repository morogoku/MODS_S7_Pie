.class public Lcom/android/server/security/VerityUtils$SetupResult;
.super Ljava/lang/Object;
.source "VerityUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/VerityUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupResult"
.end annotation


# static fields
.field private static final RESULT_FAILED:I = 0x3

.field private static final RESULT_OK:I = 0x1

.field private static final RESULT_SKIPPED:I = 0x2


# instance fields
.field private final mCode:I

.field private final mContentSize:I

.field private final mFileDescriptor:Ljava/io/FileDescriptor;


# direct methods
.method private constructor <init>(ILjava/io/FileDescriptor;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/security/VerityUtils$SetupResult;->mCode:I

    iput-object p2, p0, Lcom/android/server/security/VerityUtils$SetupResult;->mFileDescriptor:Ljava/io/FileDescriptor;

    iput p3, p0, Lcom/android/server/security/VerityUtils$SetupResult;->mContentSize:I

    return-void
.end method

.method public static failed()Lcom/android/server/security/VerityUtils$SetupResult;
    .registers 4

    new-instance v0, Lcom/android/server/security/VerityUtils$SetupResult;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/security/VerityUtils$SetupResult;-><init>(ILjava/io/FileDescriptor;I)V

    return-object v0
.end method

.method public static ok(Ljava/io/FileDescriptor;I)Lcom/android/server/security/VerityUtils$SetupResult;
    .registers 4

    new-instance v0, Lcom/android/server/security/VerityUtils$SetupResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/security/VerityUtils$SetupResult;-><init>(ILjava/io/FileDescriptor;I)V

    return-object v0
.end method

.method public static skipped()Lcom/android/server/security/VerityUtils$SetupResult;
    .registers 4

    new-instance v0, Lcom/android/server/security/VerityUtils$SetupResult;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/security/VerityUtils$SetupResult;-><init>(ILjava/io/FileDescriptor;I)V

    return-object v0
.end method


# virtual methods
.method public getContentSize()I
    .registers 2

    iget v0, p0, Lcom/android/server/security/VerityUtils$SetupResult;->mContentSize:I

    return v0
.end method

.method public getUnownedFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/security/VerityUtils$SetupResult;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public isFailed()Z
    .registers 3

    iget v0, p0, Lcom/android/server/security/VerityUtils$SetupResult;->mCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isOk()Z
    .registers 3

    iget v0, p0, Lcom/android/server/security/VerityUtils$SetupResult;->mCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method
