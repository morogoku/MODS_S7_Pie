.class public Lcom/samsung/android/knox/dlp/RightsInfo;
.super Ljava/lang/Object;
.source "RightsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CLIPBOARD:Ljava/lang/String; = "CLIPBOARD"

.field public static final COMMENT:Ljava/lang/String; = "Comment"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/dlp/RightsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDIT:Ljava/lang/String; = "Edit"

.field public static final EXPORT:Ljava/lang/String; = "Export"

.field public static final EXTRACT:Ljava/lang/String; = "Extract"

.field public static final FORWARD:Ljava/lang/String; = "Forward"

.field public static final NETWORK_ACCESS:Ljava/lang/String; = "NETWORK"

.field public static final PRINT:Ljava/lang/String; = "Print"

.field public static final REPLY:Ljava/lang/String; = "Reply"

.field public static final REPLYALL:Ljava/lang/String; = "ReplyAll"

.field public static final USEMACRO:Ljava/lang/String; = "UseMacro"

.field public static final VIEW:Ljava/lang/String; = "View"


# instance fields
.field private canComment:Z

.field private canEdit:Z

.field private canExport:Z

.field private canExtract:Z

.field private canForward:Z

.field private canPrint:Z

.field private canReply:Z

.field private canReplyAll:Z

.field private canUseMacro:Z

.field private canView:Z

.field private rulesInfoObject:Lcom/samsung/android/knox/dlp/RulesInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/dlp/RightsInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/dlp/RightsInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/dlp/RightsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/dlp/RightsInfo;->readfromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/dlp/RightsInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/dlp/RightsInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readfromParcel(Landroid/os/Parcel;)V
    .registers 4

    const/16 v0, 0xa

    new-array v0, v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    new-instance v1, Lcom/samsung/android/knox/dlp/RulesInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/dlp/RulesInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->rulesInfoObject:Lcom/samsung/android/knox/dlp/RulesInfo;

    iget-object v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->rulesInfoObject:Lcom/samsung/android/knox/dlp/RulesInfo;

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/dlp/RulesInfo;->readFromParcel(Landroid/os/Parcel;)V

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canView:Z

    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canEdit:Z

    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canExport:Z

    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canPrint:Z

    const/4 v1, 0x4

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canForward:Z

    const/4 v1, 0x5

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canReply:Z

    const/4 v1, 0x6

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canReplyAll:Z

    const/4 v1, 0x7

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canExtract:Z

    const/16 v1, 0x8

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canComment:Z

    const/16 v1, 0x9

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canUseMacro:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getRulesInfoObject()Lcom/samsung/android/knox/dlp/RulesInfo;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->rulesInfoObject:Lcom/samsung/android/knox/dlp/RulesInfo;

    return-object v0
.end method

.method public isCanComment()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canComment:Z

    return v0
.end method

.method public isCanEdit()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canEdit:Z

    return v0
.end method

.method public isCanExport()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canExport:Z

    return v0
.end method

.method public isCanExtract()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canExtract:Z

    return v0
.end method

.method public isCanForward()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canForward:Z

    return v0
.end method

.method public isCanPrint()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canPrint:Z

    return v0
.end method

.method public isCanReply()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canReply:Z

    return v0
.end method

.method public isCanReplyAll()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canReplyAll:Z

    return v0
.end method

.method public isCanUseMacro()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canUseMacro:Z

    return v0
.end method

.method public isCanView()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canView:Z

    return v0
.end method

.method public setCanComment(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canComment:Z

    return-void
.end method

.method public setCanEdit(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canEdit:Z

    return-void
.end method

.method public setCanExport(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canExport:Z

    return-void
.end method

.method public setCanExtract(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canExtract:Z

    return-void
.end method

.method public setCanForward(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canForward:Z

    return-void
.end method

.method public setCanPrint(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canPrint:Z

    return-void
.end method

.method public setCanReply(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canReply:Z

    return-void
.end method

.method public setCanReplyAll(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canReplyAll:Z

    return-void
.end method

.method public setCanUseMacro(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canUseMacro:Z

    return-void
.end method

.method public setCanView(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canView:Z

    return-void
.end method

.method public setRulesInfoObject(Lcom/samsung/android/knox/dlp/RulesInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->rulesInfoObject:Lcom/samsung/android/knox/dlp/RulesInfo;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/16 v0, 0xa

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canView:Z

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canEdit:Z

    const/4 v2, 0x1

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canExport:Z

    const/4 v2, 0x2

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canPrint:Z

    const/4 v2, 0x3

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canForward:Z

    const/4 v2, 0x4

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canReply:Z

    const/4 v2, 0x5

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canReplyAll:Z

    const/4 v2, 0x6

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canExtract:Z

    const/4 v2, 0x7

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canComment:Z

    const/16 v2, 0x8

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canUseMacro:Z

    const/16 v2, 0x9

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->rulesInfoObject:Lcom/samsung/android/knox/dlp/RulesInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/dlp/RulesInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
