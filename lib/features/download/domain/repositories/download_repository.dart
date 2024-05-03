import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import '/features/download/domain/domain.dart';
import '/core/core.dart';

abstract class DownloadRepository {
  Future<Either<Failure, QuoteImage>> captureQuoteWidget(
    GlobalKey quoteWidgetKey,
  );
  Future<Either<Failure, dynamic>> saveQuoteImageToDevice(
    QuoteImage image,
  );
}
