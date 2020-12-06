.class public Lcom/samsung/android/knox/dlp/DLPConstants$DLPCallerType;
.super Ljava/lang/Object;
.source "DLPConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/dlp/DLPConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DLPCallerType"
.end annotation


# static fields
.field public static final DLP_CALLER_TYPE_BROADCAST:Ljava/lang/String; = "DLP_PROTECT"

.field public static final DLP_CALLER_TYPE_EMAIL:Ljava/lang/String; = "App_Email"

.field public static final DLP_CALLER_TYPE_FILE_OBSERVER:Ljava/lang/String; = "DLP_PROTECT"

.field public static final DLP_CALLER_TYPE_KEY:Ljava/lang/String; = "Caller"

.field public static final DLP_CALLER_TYPE_OFFICE:Ljava/lang/String; = "App_Office"

.field public static final DLP_CALLER_TYPE_PROCESS_OBSERVER:Ljava/lang/String; = "DLP_PROTECT"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
