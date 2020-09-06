.class Lcom/android/server/wm/CustomStartingWindowController;
.super Ljava/lang/Object;
.source "CustomStartingWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;
    }
.end annotation


# static fields
.field static final SAFE_DEBUG:Z

.field private static final STARTING_WINDOW_DIRNAME:Ljava/lang/String; = "startingwindow"

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final mCustomImageSystemPath:Ljava/io/File;

.field private static final mStartingWindowPath:Ljava/io/File;

.field static sSupportMassCustomStartingWindow:Z


# instance fields
.field private final TAG_RESID:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCustomStartingWindowDataMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ConcurrentHashMap;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestedContentViewResIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system"

    const-string/jumbo v2, "startingwindow"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/CustomStartingWindowController;->mStartingWindowPath:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/custom_image"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/CustomStartingWindowController;->mCustomImageSystemPath:Ljava/io/File;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/CustomStartingWindowController;->sSupportMassCustomStartingWindow:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController;->mCustomStartingWindowDataMaps:Ljava/util/Map;

    const-string/jumbo v0, "resId"

    iput-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController;->TAG_RESID:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController;->mRequestedContentViewResIdMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/CustomStartingWindowController;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController;->mCustomStartingWindowDataMaps:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/CustomStartingWindowController;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/CustomStartingWindowController;->clearCustomStartingWindowData(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200()Ljava/io/File;
    .registers 1

    sget-object v0, Lcom/android/server/wm/CustomStartingWindowController;->mStartingWindowPath:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/CustomStartingWindowController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/CustomStartingWindowController;Ljava/io/File;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/CustomStartingWindowController;->restoreFromXmlForRequestedContentView(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$500()Ljava/io/File;
    .registers 1

    sget-object v0, Lcom/android/server/wm/CustomStartingWindowController;->mCustomImageSystemPath:Ljava/io/File;

    return-object v0
.end method

.method private clearCustomStartingWindowData(Ljava/lang/String;I)V
    .registers 9

    nop

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/CustomStartingWindowController;->getCustomStartingWindowMap(IZ)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_42

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v3, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v3, :cond_42

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CustomStartingWindow clearCustomStartingWindowData, packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    goto :goto_11

    :cond_43
    return-void
.end method

.method private getCustomStartingWindowMap(I)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/CustomStartingWindowController;->getCustomStartingWindowMap(IZ)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method private getCustomStartingWindowMap(IZ)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController;->mCustomStartingWindowDataMaps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1f

    if-eqz p2, :cond_1f

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/wm/CustomStartingWindowController;->mCustomStartingWindowDataMaps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-object v0
.end method

.method private removeXmlForRequestedContentView(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/wm/CustomStartingWindowController;->mStartingWindowPath:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_21
    return-void
.end method

.method private restoreAllFromXmlForRequestedContentView()V
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/wm/CustomStartingWindowController$2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/CustomStartingWindowController$2;-><init>(Lcom/android/server/wm/CustomStartingWindowController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private restoreFromXmlForRequestedContentView(Ljava/io/File;)V
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :try_start_11
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v4

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    :goto_23
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_b5

    const/4 v5, 0x3

    if-eq v6, v5, :cond_b5

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b0

    const-string/jumbo v7, "resId"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8d

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v6, v7

    const/4 v7, 0x4

    if-ne v6, v7, :cond_71

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v3, v7}, Lcom/android/server/wm/CustomStartingWindowController;->addRequestedContentViewResId(Ljava/lang/String;I)V

    sget-boolean v7, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v7, :cond_b0

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreFromXmlForRequestedContentView, restored for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    :cond_71
    sget-boolean v7, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v7, :cond_b0

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreFromXmlForRequestedContentView, there is no resId for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    :cond_8d
    sget-boolean v7, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v7, :cond_b0

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreFromXmlForRequestedContentView, Unknown xml event="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0
    :goto_b0
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_b3} :catch_c3
    .catchall {:try_start_11 .. :try_end_b3} :catchall_c1

    goto/16 :goto_23

    :cond_b5
    nop

    :try_start_b6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_bb

    :catch_ba
    move-exception v4

    :goto_bb
    if-eqz v1, :cond_e6

    :goto_bd
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_e6

    :catchall_c1
    move-exception v4

    goto :goto_e7

    :catch_c3
    move-exception v4

    :try_start_c4
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreFromXmlForRequestedContentView, Failing file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_db
    .catchall {:try_start_c4 .. :try_end_db} :catchall_c1

    const/4 v1, 0x1

    if-eqz v0, :cond_e3

    :try_start_de
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_e2

    goto :goto_e3

    :catch_e2
    move-exception v4

    :cond_e3
    :goto_e3
    if-eqz v1, :cond_e6

    goto :goto_bd

    :cond_e6
    :goto_e6
    return-void

    :goto_e7
    if-eqz v0, :cond_ee

    :try_start_e9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_ed

    goto :goto_ee

    :catch_ed
    move-exception v5

    :cond_ee
    :goto_ee
    if-eqz v1, :cond_f3

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_f3
    throw v4
.end method

.method private saveToXmlForRequestedContentView(I)Ljava/io/StringWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v2, "resId"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "resId"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    return-object v1
.end method

.method private writeXmlForRequestedContentView(Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController;->mRequestedContentViewResIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ce

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_a
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/server/wm/CustomStartingWindowController;->mStartingWindowPath:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v1, v2

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    iget-object v2, p0, Lcom/android/server/wm/CustomStartingWindowController;->mRequestedContentViewResIdMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/CustomStartingWindowController;->saveToXmlForRequestedContentView(I)Ljava/io/StringWriter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    sget-boolean v2, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v2, :cond_cd

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeXmlForRequestedContentView, file wrote normally."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_73} :catch_b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_73} :catch_92
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_73} :catch_74

    goto :goto_cd

    :catch_74
    move-exception v2

    if-eqz v0, :cond_7a

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_7a
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeXmlForRequestedContentView, cannot write : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ce

    :catch_92
    move-exception v2

    if-eqz v0, :cond_98

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_98
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeXmlForRequestedContentView, Unable to parse : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cd

    :catch_b0
    move-exception v2

    if-eqz v0, :cond_b6

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_b6
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeXmlForRequestedContentView, Unable to open : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_cd
    :goto_cd
    nop

    :cond_ce
    :goto_ce
    return-void
.end method


# virtual methods
.method public addCustomStartingWindowData(Landroid/content/ComponentName;Landroid/os/Bundle;I)Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/android/server/wm/CustomStartingWindowController;->getCustomStartingWindowMap(I)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    new-instance v2, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;-><init>(Lcom/android/server/wm/CustomStartingWindowController;Ljava/lang/String;Landroid/os/Bundle;I)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-object v0
.end method

.method public addRequestedContentViewResId(Ljava/lang/String;I)V
    .registers 6

    sget-boolean v0, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRequestedContentViewResId, packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", resId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController;->mRequestedContentViewResIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/wm/CustomStartingWindowController;->writeXmlForRequestedContentView(Ljava/lang/String;)V

    return-void
.end method

.method canAddCustomStartingWindowLocked(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 3

    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mCustomStartingWindowKey:Ljava/lang/String;

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method clearCustomStartingWindowDataForAllUsers(Ljava/lang/String;)V
    .registers 5

    sget-boolean v0, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_27

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearCustomStartingWindowDataForAllUsers, packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/wm/CustomStartingWindowController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/CustomStartingWindowController$1;-><init>(Lcom/android/server/wm/CustomStartingWindowController;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getCustomStartingWindowLayoutResId(Ljava/lang/String;II)I
    .registers 11

    invoke-direct {p0, p3}, Lcom/android/server/wm/CustomStartingWindowController;->getCustomStartingWindowMap(I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;

    if-eqz v0, :cond_be

    const/4 v1, 0x2

    if-eq p2, v1, :cond_12

    const/4 v1, 0x3

    if-ne p2, v1, :cond_33

    :cond_12
    iget v1, v0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->resIdOfReverseLayout:I

    if-lez v1, :cond_33

    sget-boolean v1, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v1, :cond_30

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustomStartingWindowLayoutResId, reverseLayout resId exists, customStartingWindowKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget v1, v0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->resIdOfReverseLayout:I

    return v1

    :cond_33
    sget-boolean v1, Lcom/android/server/wm/CustomStartingWindowController;->sSupportMassCustomStartingWindow:Z

    if-eqz v1, :cond_58

    iget v1, v0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->resIdOfMassLayout:I

    if-lez v1, :cond_58

    sget-boolean v1, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v1, :cond_55

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustomStartingWindowLayoutResId, massLayout resId exists, customStartingWindowKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    iget v1, v0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->resIdOfMassLayout:I

    return v1

    :cond_58
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_65

    :cond_63
    const-string v2, ""

    :goto_65
    iget v3, v0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->resIdOfDefaultLayout:I

    if-lez v3, :cond_b3

    iget-object v4, p0, Lcom/android/server/wm/CustomStartingWindowController;->mRequestedContentViewResIdMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_98

    iget-object v4, p0, Lcom/android/server/wm/CustomStartingWindowController;->mRequestedContentViewResIdMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-boolean v4, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v4, :cond_b2

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCustomStartingWindowLayoutResId, requestedContentView resId exists, packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b2

    :cond_98
    sget-boolean v4, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v4, :cond_b2

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCustomStartingWindowLayoutResId, defaultLayout resId exists, customStartingWindowKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b2
    :goto_b2
    return v3

    :cond_b3
    iget-object v4, p0, Lcom/android/server/wm/CustomStartingWindowController;->mRequestedContentViewResIdMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_be

    invoke-virtual {p0, v2}, Lcom/android/server/wm/CustomStartingWindowController;->removeRequestedContentViewResId(Ljava/lang/String;)V

    :cond_be
    const/4 v1, 0x0

    return v1
.end method

.method public getImageForCustomStartingWindow(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 6

    nop

    invoke-direct {p0, p3}, Lcom/android/server/wm/CustomStartingWindowController;->getCustomStartingWindowMap(I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->getCustomImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method init(Lcom/android/server/wm/SamsungWindowManagerService;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/wm/CustomStartingWindowController;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/wm/CustomStartingWindowController;->restoreAllFromXmlForRequestedContentView()V

    sget-object v0, Lcom/android/server/wm/CustomStartingWindowController;->mCustomImageSystemPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lcom/android/server/wm/CustomStartingWindowController;->mCustomImageSystemPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    sget-boolean v0, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_23

    const-string v0, "WindowManager"

    const-string v1, "CustomStartingWindow init, custom image dir created"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.feature.device_category_phone_low_end"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_41

    const-string v1, "com.samsung.feature.device_category_tablet"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v1, "com.samsung.feature.device_category_tablet_high_end"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    :cond_41
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/wm/CustomStartingWindowController;->sSupportMassCustomStartingWindow:Z

    :cond_44
    return-void
.end method

.method public isCustomImageLoaded(Ljava/lang/String;I)Z
    .registers 5

    invoke-direct {p0, p2}, Lcom/android/server/wm/CustomStartingWindowController;->getCustomStartingWindowMap(I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;

    if-nez v0, :cond_e

    const/4 v1, 0x0

    goto :goto_10

    :cond_e
    iget-boolean v1, v0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->isCustomImageLoaded:Z

    :goto_10
    return v1
.end method

.method public removeRequestedContentViewResId(Ljava/lang/String;)V
    .registers 5

    sget-boolean v0, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeRequestedContentViewResId, packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController;->mRequestedContentViewResIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/wm/CustomStartingWindowController;->removeXmlForRequestedContentView(Ljava/lang/String;)V

    return-void
.end method

.method public setCustomImageLoaded(Ljava/lang/String;ZI)Z
    .registers 6

    invoke-direct {p0, p3}, Lcom/android/server/wm/CustomStartingWindowController;->getCustomStartingWindowMap(I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;

    if-eqz v0, :cond_10

    iput-boolean p2, v0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->isCustomImageLoaded:Z

    const/4 v1, 0x1

    return v1

    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method setImageForCustomStartingWindow(Ljava/lang/String;Landroid/os/Bundle;ILjava/io/FileDescriptor;I)Z
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    sget-boolean v0, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    goto :goto_15

    :cond_13
    const-wide/16 v6, -0x1

    :goto_15
    const/high16 v0, 0x100000

    new-array v8, v0, [B

    const/4 v9, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v3, :cond_2b

    const-string v12, "com.samsung.android.startingwindow.IMAGE_PATH"

    invoke-virtual {v3, v12, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "com.samsung.android.startingwindow.IMAGE_PATH_QUALIFIER"

    invoke-virtual {v3, v12, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_2b
    move-object v12, v10

    move-object v10, v0

    sget-boolean v0, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_64

    const-string v0, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CustomStartingWindow setImageForCustomStartingWindow, componentName="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", customImage="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", customImageQualifier="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", caller="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x5

    invoke-static {v14}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    const/4 v13, 0x0

    if-nez v10, :cond_75

    if-nez v12, :cond_75

    sget-boolean v0, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_74

    const-string v0, "WindowManager"

    const-string v11, "CustomStartingWindow setImageForCustomStartingWindow, custom image not support app"

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    return v13

    :cond_75
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v14, 0x1

    sub-int/2addr v0, v14

    invoke-virtual {v2, v14, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    new-instance v0, Ljava/io/File;

    new-instance v13, Ljava/io/File;

    sget-object v11, Lcom/android/server/wm/CustomStartingWindowController;->mCustomImageSystemPath:Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v11, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v13, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Lcom/android/server/wm/CustomStartingWindowController;->getCustomStartingWindowMap(I)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;

    if-nez v11, :cond_d1

    sget-boolean v13, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v13, :cond_c5

    const-string v13, "WindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v9

    const-string v9, "CustomStartingWindow setImageForCustomStartingWindow, noAdded customStartingWindowData customStartingWindowKey="

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    :cond_c5
    move-object/from16 v16, v9

    :goto_c7
    new-instance v9, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;

    invoke-direct {v9, v1, v15, v3, v4}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;-><init>(Lcom/android/server/wm/CustomStartingWindowController;Ljava/lang/String;Landroid/os/Bundle;I)V

    move-object v11, v9

    invoke-interface {v2, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d3

    :cond_d1
    move-object/from16 v16, v9

    :goto_d3
    move/from16 v9, p5

    invoke-virtual {v11, v12, v0, v9}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->getCustomImageBitmapFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;

    move-result-object v13

    if-nez v5, :cond_fd

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f0

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    sget-boolean v0, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_fb

    const-string v0, "WindowManager"

    const-string v14, "CustomStartingWindow setImageForCustomStartingWindow, removing custom image by no fileDescriptor"

    invoke-static {v0, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fb

    :cond_f0
    sget-boolean v0, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_fb

    const-string v0, "WindowManager"

    const-string v14, "CustomStartingWindow setImageForCustomStartingWindow, custom image removing is requested. but there is no file."

    invoke-static {v0, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fb
    :goto_fb
    const/4 v0, 0x1

    return v0

    :cond_fd
    const/4 v0, 0x0

    move-object v14, v0

    :try_start_ff
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_103
    .catch Ljava/io/FileNotFoundException; {:try_start_ff .. :try_end_103} :catch_1e5
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_103} :catch_1bb
    .catchall {:try_start_ff .. :try_end_103} :catchall_1b5

    if-nez v0, :cond_12b

    :try_start_105
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_12b

    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z
    :try_end_115
    .catch Ljava/io/FileNotFoundException; {:try_start_105 .. :try_end_115} :catch_124
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_115} :catch_11d
    .catchall {:try_start_105 .. :try_end_115} :catchall_116

    goto :goto_12b

    :catchall_116
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v1, v16

    goto/16 :goto_201

    :catch_11d
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v1, v16

    goto/16 :goto_1c0

    :catch_124
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v1, v16

    goto/16 :goto_1ea

    :cond_12b
    :goto_12b
    :try_start_12b
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_130
    .catch Ljava/io/FileNotFoundException; {:try_start_12b .. :try_end_130} :catch_1e5
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_130} :catch_1bb
    .catchall {:try_start_12b .. :try_end_130} :catchall_1b5

    move-object/from16 v17, v0

    move-object/from16 v1, v17

    :try_start_134
    invoke-virtual {v1, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v0
    :try_end_138
    .catch Ljava/io/FileNotFoundException; {:try_start_134 .. :try_end_138} :catch_1b1
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_138} :catch_1ad
    .catchall {:try_start_134 .. :try_end_138} :catchall_1a9

    move-object/from16 v18, v2

    :try_start_13a
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v14, v2

    const/4 v2, 0x0

    invoke-virtual {v14, v8, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    sget-boolean v2, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v2, :cond_166

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setImageForCustomStartingWindow, file size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v4, v0, 0x400

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_166
    .catch Ljava/io/FileNotFoundException; {:try_start_13a .. :try_end_166} :catch_1a7
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_166} :catch_1a5
    .catchall {:try_start_13a .. :try_end_166} :catchall_200

    :cond_166
    :try_start_166
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_16c

    :catch_16a
    move-exception v0

    goto :goto_170

    :goto_16c
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_16f} :catch_16a

    goto :goto_17b

    :goto_170
    nop

    const-string v2, "WindowManager"

    const-string/jumbo v3, "setImageForCustomStartingWindow, failed to close streams"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2

    :goto_17b
    nop

    sget-boolean v0, Lcom/android/server/wm/CustomStartingWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_19c

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CustomStartingWindow setImageForCustomStartingWindow, it is done normally, duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a3

    :cond_19c
    const-string v0, "WindowManager"

    const-string v2, "CustomStartingWindow setImageForCustomStartingWindow, it is done normally"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a3
    const/4 v0, 0x1

    return v0

    :catch_1a5
    move-exception v0

    goto :goto_1c0

    :catch_1a7
    move-exception v0

    goto :goto_1ea

    :catchall_1a9
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_1ba

    :catch_1ad
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_1c0

    :catch_1b1
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_1ea

    :catchall_1b5
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v1, v16

    :goto_1ba
    goto :goto_201

    :catch_1bb
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v1, v16

    :goto_1c0
    move-object v2, v0

    :try_start_1c1
    const-string v0, "WindowManager"

    const-string/jumbo v3, "setImageForCustomStartingWindow, failed to copy file"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c9
    .catchall {:try_start_1c1 .. :try_end_1c9} :catchall_200

    nop

    if-eqz v1, :cond_1d2

    :try_start_1cc
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_1d2

    :catch_1d0
    move-exception v0

    goto :goto_1d8

    :cond_1d2
    :goto_1d2
    if-eqz v14, :cond_1e3

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d7
    .catch Ljava/lang/Exception; {:try_start_1cc .. :try_end_1d7} :catch_1d0

    goto :goto_1e3

    :goto_1d8
    nop

    const-string v3, "WindowManager"

    const-string/jumbo v4, "setImageForCustomStartingWindow, failed to close streams"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    return v3

    :cond_1e3
    :goto_1e3
    const/4 v3, 0x0

    return v3

    :catch_1e5
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v1, v16

    :goto_1ea
    move-object v2, v0

    :try_start_1eb
    const-string v0, "WindowManager"

    const-string/jumbo v3, "setImageForCustomStartingWindow, failed to copy file"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f3
    .catchall {:try_start_1eb .. :try_end_1f3} :catchall_200

    nop

    if-eqz v1, :cond_1f9

    :try_start_1f6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_1f9
    if-eqz v14, :cond_1fe

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_1fe
    .catch Ljava/lang/Exception; {:try_start_1f6 .. :try_end_1fe} :catch_1d0

    :cond_1fe
    const/4 v3, 0x0

    return v3

    :catchall_200
    move-exception v0

    :goto_201
    if-eqz v1, :cond_206

    :try_start_203
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_206
    if-eqz v14, :cond_20b

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_20b
    .catch Ljava/lang/Exception; {:try_start_203 .. :try_end_20b} :catch_16a

    :cond_20b
    nop

    throw v0
.end method
